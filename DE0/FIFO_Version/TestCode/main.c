#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <sys/wait.h>
#include <netinet/in.h>
#include <signal.h>


#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

void error(const char *msg)
{
    perror(msg);
    exit(1);
}

#define PACKETSIZE 6000000
#define BUFFERSIZE 6000000

int testFlag = 0;
long outputCounter = 0;
int waveformBuffer[BUFFERSIZE];
int parity = 0;

int main(int argc, char *argv[])
{
	void *virtual_base;
	int fd;
	
	void *h2p_lw_led_addr;
	void *h2p_lw_DAC_addr;
	void *h2p_lw_fake_OK_addr;
	void *h2p_lw_busy_addr;
	void *h2p_lw_FIFO_wrfull_addr;
    void *h2p_lw_system_reset_addr;
	void *h2p_lw_new_word_ready_addr;
	
	//Memory mapping:
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}

	virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );

	if( virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap() failed...\n" );
		close( fd );
		return( 1 );
	}
	
	h2p_lw_led_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + LED_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_DAC_addr =virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + DAC_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_fake_OK_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FAKE_OK_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_busy_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + BUSY_IN_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_FIFO_wrfull_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FIFO_WRFULL_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
    h2p_lw_system_reset_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SYSTEM_RESET_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_new_word_ready_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + NEW_WORD_READY_BASE ) & ( unsigned long)( HW_REGS_MASK ) );;

	//------------------------Begin Application---------------------------

  //Communication
  int sockfd, newsockfd, portno;
  socklen_t clilen;
  char tcpBuffer[PACKETSIZE];
  char smallBuffer[8];
  //Internals
  int n,i,k;
  int wrfullValue,busyValue;
  int edgeFlag = 0;
  long bufferPointer;
  struct sockaddr_in serv_addr, cli_addr;
  int byteCounter = 0;
  if (argc < 2) {
         fprintf(stderr,"ERROR, no port provided\n");
         exit(1);
     }
 
  //Enter main application loop:
 
		 
		  bufferPointer = 0;
		  outputCounter = 0;
		  byteCounter = 3*500000; 
		  n = 0;

		  //We now convert each triplet of bytes into an unsigned 32-bit integer and store in the waveform buffer
		  for (i = 0; i < byteCounter; i += 3)
			{
				waveformBuffer[bufferPointer++] = 100000*(i%2);
			}
		
		  printf("Buffer loaded into memory with %d samples \n",byteCounter);
		  printf("First word is %d\n",waveformBuffer[0]);
		  
		  
		  //Now we init the driver hardware: a bit-banged reset pulse followed by a fake Opal Kelly pulse:
		  *(uint32_t *)h2p_lw_new_word_ready_addr = 0x00000000; //Init value
		  
		  *(uint32_t *)h2p_lw_system_reset_addr = 0x00000000;
		  *(uint32_t *)h2p_lw_system_reset_addr = 0x000000FF;
		  usleep(500000);//Delay 500ms
		  *(uint32_t *)h2p_lw_system_reset_addr = 0x00000000;
		   usleep(50);//Delay 50us
		  //*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
		  //*(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
		  // usleep(500);//Delay 500us
		  //*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
		
		
				while(1)
				{
					//The Child process keeps the FIFO buffer topped up:
					//When we see that Busy is low and WRFULL is low, we update the output word and send our new_word output high
					//!! The busy line should never be read as high b/c of the fast WSD clock, but it's here as a precaution
					
					wrfullValue = (*(uint32_t *)h2p_lw_FIFO_wrfull_addr)&(0x000000FF); //read wrfull
					busyValue = (*(uint32_t *)h2p_lw_busy_addr)&(0x000000FF);
					if(wrfullValue == 0 && busyValue==0 && outputCounter < bufferPointer)
					{
							
							//printf("This word is %d\n",waveformBuffer[outputCounter]);
							*(uint32_t *)h2p_lw_DAC_addr = waveformBuffer[outputCounter++] ; //20LSB 
							printf("New word placed in output buffer: %d\n",outputCounter);
							*(uint32_t *)h2p_lw_new_word_ready_addr = 0x00000000;
							*(uint32_t *)h2p_lw_new_word_ready_addr = 0x000000FF;
							*(uint32_t *)h2p_lw_new_word_ready_addr = 0x00000000;
							 *(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
							usleep(500000);//Delay 50us
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
							usleep(500000);//Delay 50us
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
							usleep(500000);//Delay 50us
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
							usleep(500000);//Delay 50us
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
							usleep(500000);//Delay 50us
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
							usleep(500000);//Delay 50us
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
							usleep(500000);//Delay 50us
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;

					}

					
					else if(outputCounter == bufferPointer)
					{ break; }
				
				
					
					if(busyValue!=0)
					{
					printf("we\n");
					}
					
					
						
				}
		 
		 

  return 0;
}

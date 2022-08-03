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
#define FIFOLENGTH 4096

int testFlag = 0;
long outputCounter = 0;
int waveformBuffer[BUFFERSIZE];

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
	h2p_lw_FIFO_wrfull_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FIFO_WRFULL_BASE ) & ( unsigned long)( HW_REGS_MASK ) );;
    h2p_lw_system_reset_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SYSTEM_RESET_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_new_word_ready_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + NEW_WORD_READY_BASE ) & ( unsigned long)( HW_REGS_MASK ) );;

	//------------------------Begin Application---------------------------

   printf("Listening\n");		
	
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
  //Set up socket server with STREAM type (TCP will be used)
  sockfd = socket(AF_INET, SOCK_STREAM, 0);
  if (sockfd < 0) 
        error("ERROR opening socket\n");
  bzero((char *) &serv_addr, sizeof(serv_addr));
  portno = atoi(argv[1]);
  serv_addr.sin_family = AF_INET;
  serv_addr.sin_addr.s_addr = INADDR_ANY;
  serv_addr.sin_port = htons(portno);
  //Bind to port
  if (bind(sockfd, (struct sockaddr *) &serv_addr,
              sizeof(serv_addr)) < 0) 
              error("ERROR on binding\n");

  //Listen (blocking)
  listen(sockfd,5);
  clilen = sizeof(cli_addr);
  newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
  if (newsockfd < 0) 
        error("ERROR on accept\n");
  bzero(tcpBuffer,BUFFERSIZE);
  printf("Client connection accepted\n");
  int temp1 = write(newsockfd,"ready1",6);
  
  
  //Now we init the driver hardware: a bit-banged reset pulse
   *(uint32_t *)h2p_lw_new_word_ready_addr = 0x00000000; //Init value
   *(uint32_t *)h2p_lw_system_reset_addr = 0x00000000;
   *(uint32_t *)h2p_lw_system_reset_addr = 0x000000FF;
   *(uint32_t *)h2p_lw_system_reset_addr = 0x00000000;
   usleep(50);//Delay 50us
		 
  //Enter main application loop:
  while(1)
  {
		 
		  
		  bufferPointer = 0;
		  outputCounter = 0;
		  byteCounter = 0; 
		  n = 0;
		  
		  //First get number of incoming bytes
		  read(newsockfd,smallBuffer,4);
		  int bytesIncoming = ((int)smallBuffer[3]<<24)|((int)smallBuffer[2]<<16)|((int)smallBuffer[1]<<8)|(int)smallBuffer[0];
		  printf("We're expecting %d bytes\n",bytesIncoming);
		  
		  //Then read them
		  while(byteCounter < bytesIncoming)
		  {
		   n = read(newsockfd,tcpBuffer+byteCounter,999); //n returns number of bytes sent
		   if (n < 0) error("ERROR reading from socket\n");
		   byteCounter += n;
		   //printf("Buffer partially loaded into memory with %d samples \n",byteCounter);
		  }
		  
		  
		  //We now convert each triplet of bytes into an unsigned 32-bit integer and store in the waveform buffer
		  for (i = 0; i < byteCounter; i += 3)
			{
				waveformBuffer[bufferPointer++] = ((int)tcpBuffer[i+2]<<16)|((int)tcpBuffer[i+1]<<8)|(int)tcpBuffer[i];
			}
		  int nw = write(newsockfd,"ready1",6);
		  if (n < 0) error("ERROR writing to socket\n");
		
		  printf("Buffer loaded into memory with %d samples \n",byteCounter);
		  printf("First word is %d\n",waveformBuffer[0]);
		  
		  //Run a dummy LDAC and get the first word on deck in the DAC's register
		  *(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
		  usleep(50);
		  *(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
		  usleep(50);
		  *(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
		  

		  int pid = fork();
		  if(pid == 0) //Child
		  {
				while(1)
				{
					//The Child process keeps the FIFO buffer topped up:
					//When we see that Busy is low and WRFULL is low, we update the output word and send our new_word output high
					//!! The busy line should never be read as high b/c of the fast WSD clock, but it's here as a precaution
					
					wrfullValue = (*(uint32_t *)h2p_lw_FIFO_wrfull_addr)&(0x00000001); //read wrfull
					busyValue = (*(uint32_t *)h2p_lw_busy_addr)&(0x00000001);
					if(wrfullValue == 0 && busyValue==0 && outputCounter < bufferPointer)
					{
						*(uint32_t *)h2p_lw_DAC_addr = waveformBuffer[outputCounter]; //20LSB 
						if(outputCounter < bufferPointer) outputCounter++;
						*(uint32_t *)h2p_lw_new_word_ready_addr = 0x00000000;
						*(uint32_t *)h2p_lw_new_word_ready_addr = 0x000000FF;
						*(uint32_t *)h2p_lw_new_word_ready_addr = 0x00000000;
						if(outputCounter == 1) //Did we just put the first word into the buffer? Get it on deck if so
						{
							usleep(500);
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
							usleep(50);
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
							usleep(50);
							*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
							
							if(bufferPointer == 1) //Is this "output now?" Clock it out if soc
							{
								usleep(500);
								*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
								usleep(50);
								*(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
								usleep(50);
								*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
							}
							
						}
					}
						
				}
		 }
		 
		 else //Parent 
		 {
			
			if(bufferPointer == 1) //Is this "output now?" Wait!
			{
				usleep(200000);				
			}
			
				n = read(newsockfd,smallBuffer,2); //Read 2 characters, BLOCKING
				if (n < 0) error("ERROR reading from socket\n");
				printf("Message was %s\n",smallBuffer); //Print message to uart for debug purposes
				
		   
			
			kill(pid,SIGTERM);
			
			//Clear out the buffer just in case
			
				int foo = 0;
				for (foo = 0; foo < FIFOLENGTH+1; foo++)
				{
					*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
					usleep(50);
					*(uint32_t *)h2p_lw_fake_OK_addr = 0x000000FF;
					usleep(50);
					*(uint32_t *)h2p_lw_fake_OK_addr = 0x00000000;
				}

			
			wait(NULL);
		 }
		  

	}
  close(newsockfd);
  close(sockfd);
  return 0;
}

/* Quartus Prime Version 21.1.0 Build 842 10/21/2021 Patches 0.01std SJ Standard Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEMA4) Path("C:/Users/Alan/Desktop/Soc System DE-0 Compiled Edition 21/SoC/") File("output_file_EPCS64.jic") MfrSpec(OpMask(1) SEC_Device(EPCS64) Child_OpMask(1 1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;

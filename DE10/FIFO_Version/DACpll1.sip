set_global_assignment -entity "DACpll1" -library "lib_DACpll1" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "DACpll1" -library "lib_DACpll1" -name IP_TOOL_VERSION "14.0"
set_global_assignment -entity "DACpll1" -library "lib_DACpll1" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_DACpll1" -name SPD_FILE [file join $::quartus(sip_path) "DACpll1.spd"]

set_global_assignment -library "lib_DACpll1" -name MISC_FILE [file join $::quartus(sip_path) "DACpll1_sim/DACpll1.vho"]

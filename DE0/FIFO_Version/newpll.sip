set_global_assignment -entity "newpll" -library "lib_newpll" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "newpll" -library "lib_newpll" -name IP_TOOL_VERSION "21.1"
set_global_assignment -entity "newpll" -library "lib_newpll" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_newpll" -name SPD_FILE [file join $::quartus(sip_path) "newpll.spd"]

set_global_assignment -library "lib_newpll" -name MISC_FILE [file join $::quartus(sip_path) "newpll_sim/newpll.vho"]

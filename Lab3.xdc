## This can be used for your lab 3 - modify it as stated in the lab 3 handout

## This part is to activate or deactive ANODE of each display digit
set_property IOSTANDARD LVCMOS33 [get_ports {en_outt[0]}]
set_property PACKAGE_PIN J17 [get_ports {en_outt[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_outt[1]}]
set_property PACKAGE_PIN J18 [get_ports {en_outt[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_outt[2]}]
set_property PACKAGE_PIN T9 [get_ports {en_outt[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_outt[3]}]
set_property PACKAGE_PIN J14 [get_ports {en_outt[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_outt[4]}]
set_property PACKAGE_PIN P14 [get_ports {en_outt[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_outt[5]}]
set_property PACKAGE_PIN T14 [get_ports {en_outt[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_outt[6]}]
set_property PACKAGE_PIN K2 [get_ports {en_outt[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_outt[7]}]
set_property PACKAGE_PIN U13 [get_ports {en_outt[7]}]

##This part is to assign pin numbers for 7 segments of the digit display
set_property IOSTANDARD LVCMOS33 [get_ports {out77[6]}]
set_property PACKAGE_PIN T10 [get_ports {out77[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out77[5]}]
set_property PACKAGE_PIN R10 [get_ports {out77[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out77[4]}]
set_property PACKAGE_PIN K16 [get_ports {out77[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out77[3]}]
set_property PACKAGE_PIN K13 [get_ports {out77[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out77[2]}]
set_property PACKAGE_PIN P15 [get_ports {out77[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out77[1]}]
set_property PACKAGE_PIN T11 [get_ports {out77[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out77[0]}]
set_property PACKAGE_PIN L18 [get_ports {out77[0]}]


##This part is to assign a pin number to 100MHz clock signal
set_property PACKAGE_PIN E3 [get_ports Clk]
set_property IOSTANDARD LVCMOS33 [get_ports Clk]

##This part is to assign a pin number to N, D, Reset

##set_property IOSTANDARD LVCMOS33 [get_ports {N}]
##set_property PACKAGE_PIN P17 [get_ports {N}]

##set_property IOSTANDARD LVCMOS33 [get_ports {D}]
##set_property PACKAGE_PIN M17 [get_ports {D}]

set_property IOSTANDARD LVCMOS33 [get_ports Rst]
set_property PACKAGE_PIN N17 [get_ports Rst]




##This part is to assign a pin number to Candy, CR
##set_property IOSTANDARD LVCMOS33 [get_ports {C}]
##set_property PACKAGE_PIN R18 [get_ports {C}]

##set_property IOSTANDARD LVCMOS33 [get_ports {CR}]
##set_property PACKAGE_PIN N14 [get_ports {CR}]



## below is the inputs used in Lab 2 which we no longer use in lab 3
##This part is to assign pin numbers for 7-bit input number
##Number[6] - Most Significant Bit (MSB) => SW6 (pin U18)
##Number[0] - Least Siginificant Bit (LSB) => SW0 (pin J15)
##set_property IOSTANDARD LVCMOS33 [get_ports {Number[6]}]
##set_property PACKAGE_PIN U18 [get_ports {Number[6]}]
##set_property IOSTANDARD LVCMOS33 [get_ports {Number[5]}]
##set_property PACKAGE_PIN T18 [get_ports {Number[5]}]
##set_property IOSTANDARD LVCMOS33 [get_ports {Number[4]}]
##set_property PACKAGE_PIN R17 [get_ports {Number[4]}]
##set_property IOSTANDARD LVCMOS33 [get_ports {Number[3]}]
##set_property PACKAGE_PIN R15 [get_ports {Number[3]}]
##set_property IOSTANDARD LVCMOS33 [get_ports {Number[2]}]
##set_property PACKAGE_PIN M13 [get_ports {Number[2]}]
##set_property IOSTANDARD LVCMOS33 [get_ports {Number[1]}]
##set_property PACKAGE_PIN L16 [get_ports {Number[1]}]
##set_property IOSTANDARD LVCMOS33 [get_ports {Number[0]}]
##set_property PACKAGE_PIN J15 [get_ports {Number[0]}]

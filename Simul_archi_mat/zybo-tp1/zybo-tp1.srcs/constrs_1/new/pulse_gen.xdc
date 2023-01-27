create_clock -period 8.000 -name MCLK -waveform {0.000 4.000} [get_ports MCLK]

set_property PACKAGE_PIN L16 [get_ports MCLK]
set_property IOSTANDARD LVCMOS33 [get_ports MCLK]
set_property PACKAGE_PIN M15 [get_ports P]
set_property IOSTANDARD LVCMOS33 [get_ports P]
set_property PACKAGE_PIN R18 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports RST]
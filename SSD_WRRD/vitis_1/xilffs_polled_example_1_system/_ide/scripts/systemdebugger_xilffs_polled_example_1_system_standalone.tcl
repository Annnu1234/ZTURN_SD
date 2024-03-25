# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\project\z_turn_board\SSD_WRRD\vitis_1\xilffs_polled_example_1_system\_ide\scripts\systemdebugger_xilffs_polled_example_1_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\project\z_turn_board\SSD_WRRD\vitis_1\xilffs_polled_example_1_system\_ide\scripts\systemdebugger_xilffs_polled_example_1_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Platform Cable USB II 00001b3b941901" && level==0 && jtag_device_ctx=="jsn-DLC10-00001b3b941901-23727093-0"}
fpga -file D:/project/z_turn_board/SSD_WRRD/vitis_1/xilffs_polled_example_1/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/project/z_turn_board/SSD_WRRD/vitis_1/hard_plat/export/hard_plat/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/project/z_turn_board/SSD_WRRD/vitis_1/xilffs_polled_example_1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/project/z_turn_board/SSD_WRRD/vitis_1/xilffs_polled_example_1/Debug/xilffs_polled_example_1.elf
configparams force-mem-access 0
bpadd -addr &main

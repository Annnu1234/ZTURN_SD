# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\project\z_turn_board\SSD_WRRD\vitis_1\hard_plat\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\project\z_turn_board\SSD_WRRD\vitis_1\hard_plat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {hard_plat}\
-hw {D:\project\z_turn_board\SSD_WRRD\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/project/z_turn_board/SSD_WRRD/vitis_1}

platform write
platform generate -domains 
platform active {hard_plat}
domain active {zynq_fsbl}
bsp reload
bsp write
bsp write
domain active {standalone_domain}
bsp reload
bsp reload
bsp setlib -name xilffs -ver 4.7
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate

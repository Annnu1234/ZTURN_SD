vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_12
vlib riviera/processing_system7_vip_v1_0_14
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 riviera/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 riviera/processing_system7_vip_v1_0_14
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+C:/xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+C:/xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+C:/xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SSD_WRRD.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+C:/xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


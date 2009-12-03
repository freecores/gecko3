////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.33
//  \   \         Application: netgen
//  /   /         Filename: fifo_U2X_2C_1024B_for.v
// /___/   /\     Timestamp: Mon Jun 15 19:38:38 2009
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -ecn formality /home/habea2/Geccko3com/gecko3com_v04/tmp/_cg/fifo_U2X_2C_1024B.ngd /home/habea2/Geccko3com/gecko3com_v04/tmp/_cg/fifo_U2X_2C_1024B_for.v 
// Device	: 3s1500fg676-4
// Input file	: /home/habea2/Geccko3com/gecko3com_v04/tmp/_cg/fifo_U2X_2C_1024B.ngd
// Output file	: /home/habea2/Geccko3com/gecko3com_v04/tmp/_cg/fifo_U2X_2C_1024B_for.v
// # of Modules	: 1
// Design Name	: fifo_U2X_2C_1024B
// Xilinx        : /opt/xilinx/ise_91i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses library 
//     primitives which may not represent the true implementation of 
//     the device, however the netlist is functionally correct and 
//     should not be modified. This file cannot be synthesized and 
//     should only be used with supported equivalence checking tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fifo_U2X_2C_1024B (
  almost_empty, rd_en, wr_en, full, empty, wr_clk, rst, almost_full, rd_clk, dout, din
);
  output almost_empty;
  input rd_en;
  input wr_en;
  output full;
  output empty;
  input wr_clk;
  input rst;
  output almost_full;
  input rd_clk;
  output [31 : 0] dout;
  input [15 : 0] din;
  wire NlwRenamedSig_OI_empty;
  wire NlwRenamedSig_OI_full;
  wire \BU2/N2 ;
  wire \BU2/overflow ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor000611_SW1/O ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor000611_SW1/O ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb_0 ;
  wire \BU2/U0/gen_as.fgas/N92 ;
  wire \BU2/U0/gen_as.fgas/N90 ;
  wire \BU2/U0/gen_as.fgas/N88 ;
  wire \BU2/U0/gen_as.fgas/N86 ;
  wire \BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0007 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0006 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0005 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0004 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0003 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0002 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0001 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0007 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0006 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0005 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0004 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0003 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0002 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0001 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0008 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0007 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0006 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0005 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0004 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0003 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0002 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0001 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0007 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0006 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0005 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0004 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0003 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0002 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0001 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/almost_full_i_or0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/FULL_inv ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/comp_af2 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/comp_af1 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/almost_empty_i_or0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/EMPTY_inv ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/comp_ae2 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/comp_ae1 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full2 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full1 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp2out ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp1out ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_0 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_1 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_2 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_3 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_4 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_5 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_6 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_7 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_8 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_9 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_10 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_11 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_12 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_13 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_14 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_15 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_16 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_17 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_18 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_19 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_20 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_21 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_22 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_23 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_24 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_25 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_26 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_27 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_28 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_29 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_30 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_31 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_32 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_33 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_34 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_35 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_36 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_37 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_38 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_39 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_40 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_41 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_42 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_43 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_44 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_45 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_46 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_47 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_48 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_49 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_50 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_51 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_52 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_53 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_54 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_55 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_56 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_57 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_58 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_59 ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg_60 ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg_62 ;
  wire \BU2/U0/gen_as.fgas/N1 ;
  wire \BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ;
  wire \BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ;
  wire NLW_VCC_O_UNCONNECTED;
  wire NLW_GND_O_UNCONNECTED;
  wire VCC_63;
  wire GND_64;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[15]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[14]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[13]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[12]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[11]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[10]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[9]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[8]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[7]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[6]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[5]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[4]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[3]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[2]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[1]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[0]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPA[1]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPA[0]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPB[3]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPB[2]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPB[1]_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPB[0]_UNCONNECTED ;
  wire [8 : 0] \BU2/prog_empty_thresh ;
  wire [8 : 0] \BU2/prog_empty_thresh_negate ;
  wire [9 : 0] \BU2/prog_full_thresh ;
  wire [9 : 0] \BU2/prog_full_thresh_assert ;
  wire [9 : 0] \BU2/prog_full_thresh_negate ;
  wire [8 : 0] \BU2/prog_empty_thresh_assert ;
  wire [0 : 0] \BU2/data_count ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc ;
  wire [9 : 1] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [7 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [7 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [7 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/debug_rd_pntr_w ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR ;
  wire [9 : 1] \BU2/U0/gen_as.fgas/debug_wr_pntr_r ;
  assign
    full = NlwRenamedSig_OI_full,
    empty = NlwRenamedSig_OI_empty;
  X_ONE VCC (
    .O(NLW_VCC_O_UNCONNECTED)
  );
  X_ZERO GND (
    .O(NLW_GND_O_UNCONNECTED)
  );
  X_ONE \BU2/XST_VCC  (
    .O(\BU2/N2 )
  );
  X_ZERO \BU2/XST_GND  (
    .O(\BU2/data_count [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor000611_SW1 .INIT = 8'h69;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor000611_SW1  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [1]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [2]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor000611_SW1/O )
  );
  X_BUF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor000611_SW1/LUT3_L_BUF  (
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor000611_SW1/O ),
    .O(\BU2/U0/gen_as.fgas/N92 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor000611_SW1 .INIT = 8'h69;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor000611_SW1  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [0]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [1]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor000611_SW1/O )
  );
  X_BUF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor000611_SW1/LUT3_L_BUF  (
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor000611_SW1/O ),
    .O(\BU2/U0/gen_as.fgas/N88 )
  );
  X_INV \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/EMPTY_inv1_INV_0  (
    .I(NlwRenamedSig_OI_empty),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/EMPTY_inv )
  );
  X_INV \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/FULL_inv1_INV_0  (
    .I(NlwRenamedSig_OI_full),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/FULL_inv )
  );
  X_INV \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  X_INV
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  X_INV
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  X_INV
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [0]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  X_INV \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  X_INV
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  X_INV
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [0]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int_0_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int_0_1  (
    .CLK(rd_clk),
    .I(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg_62 ),
    .SET(rst),
    .O(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb_0 ),
    .CE(VCC_63),
    .RST(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en1 .INIT = 8'hF2;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en1  (
    .ADR0(rd_en),
    .ADR1(NlwRenamedSig_OI_empty),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb_0 ),
    .O(\BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/almost_empty_i_or00001 .INIT = 16'hFF20;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/almost_empty_i_or00001  (
    .ADR0(rd_en),
    .ADR1(NlwRenamedSig_OI_empty),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/comp_ae2 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/comp_ae1 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/almost_empty_i_or0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/almost_full_i_or00001 .INIT = 16'hFF20;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/almost_full_i_or00001  (
    .ADR0(wr_en),
    .ADR1(NlwRenamedSig_OI_full),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/comp_af2 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/comp_af1 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/almost_full_i_or0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG_i1 .INIT = 16'hFF20;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG_i1  (
    .ADR0(rd_en),
    .ADR1(NlwRenamedSig_OI_empty),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp2out ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp1out ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG_i1 .INIT = 16'hF2F0;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG_i1  (
    .ADR0(wr_en),
    .ADR1(NlwRenamedSig_OI_full),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full1 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full2 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00071 .INIT = 16'h9669;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00071  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [4]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .ADR2(\BU2/U0/gen_as.fgas/N92 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0007 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00062 .INIT = 16'h6996;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00062  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [4]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .ADR2(\BU2/U0/gen_as.fgas/N90 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0006 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor000611_SW0 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor000611_SW0  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [3]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [2]),
    .O(\BU2/U0/gen_as.fgas/N90 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00071 .INIT = 16'h9669;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00071  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .ADR2(\BU2/U0/gen_as.fgas/N88 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0007 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00062 .INIT = 16'h6996;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00062  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .ADR2(\BU2/U0/gen_as.fgas/N86 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0006 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor000611_SW0 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor000611_SW0  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [2]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [1]),
    .O(\BU2/U0/gen_as.fgas/N86 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_0 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [9]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_9 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [9]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_18 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [9]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_27 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_36 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [8]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_44 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [8]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_52 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_1 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_2 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_3 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_4 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_5 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_6 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_7 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_8 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [8]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_10 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [7]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_11 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [6]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_12 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [5]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_13 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [4]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_14 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [3]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_15 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [2]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_16 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [1]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_17 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [8]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_19 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [7]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_20 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [6]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_21 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [5]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_22 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [4]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_23 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [3]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_24 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [2]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_25 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [1]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_26 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [8]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_28 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [7]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_29 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [6]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_30 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [5]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_31 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [4]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_32 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [3]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_33 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [2]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_34 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [1]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_35 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_37 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_38 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_39 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_40 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_41 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_42 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt .INIT = 4'hA;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_43 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [7]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_45 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [6]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_46 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [5]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_47 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [4]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_48 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [3]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_49 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [2]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_50 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [1]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_51 ),
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [7]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_53 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [6]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_54 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [5]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_55 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [4]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_56 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [3]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_57 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [2]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_58 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt .INIT = 4'hA;
  X_LUT2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [1]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_59 )
,
    .ADR1(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_0_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_0_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [0]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [1]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [1]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_0_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_0_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [0]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [1]),
    .ADR2
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [1]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_0_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_0_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [1]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [2]),
    .ADR3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_0_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_0_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [1]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [0]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [2]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_0_and00001 .INIT = 8'h41;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_0_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [0]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [1]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_0_and00001 .INIT = 8'h41;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_0_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [0]),
    .ADR1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [1]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_0_and00001 .INIT = 8'h41;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_0_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [0]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [1]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_0_and00001 .INIT = 8'h41;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_0_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [0]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [1]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_1_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_1_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [2]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [3]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_1_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_1_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [2]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .ADR2
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [3]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_1_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_1_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [2]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [3]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_1_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_1_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [2]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .ADR2
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [3]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_1_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_1_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .ADR3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_1_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_1_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [2]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_1_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_1_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [2]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [3]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_1_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_1_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [2]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [3]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_2_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_2_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [4]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [5]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_2_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_2_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [4]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .ADR2
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [5]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_2_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_2_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [4]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [5]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_2_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_2_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [4]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .ADR2
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [5]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_2_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_2_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .ADR3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_2_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_2_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [4]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_2_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_2_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [4]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [5]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_2_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_2_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [4]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [5]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_3_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_3_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [6]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [7]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_3_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_3_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [6]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .ADR2
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [7]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_3_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_3_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [6]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [7]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_3_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_3_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [6]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .ADR2
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [7]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_3_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_3_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .ADR3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_3_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_3_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [6]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_3_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_3_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [6]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [7]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_3_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_3_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [6]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [7]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_4_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1_4_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [8]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [9]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_4_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1_4_and00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [8]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .ADR2
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [9]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_4_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1_4_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [8]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [9]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_4_and00001 .INIT = 16'h9009;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1_4_and00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [8]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .ADR2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [9]),
    .ADR3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_4_not00001 .INIT = 4'h9;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1_4_not00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [8]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_4_not00001 .INIT = 4'h9;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1_4_not00001  (
    .ADR0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [8]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_4_not00001 .INIT = 4'h9;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1_4_not00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_4_not00001 .INIT = 4'h9;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1_4_not00001  (
    .ADR0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .ADR1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 .INIT = 4'h2;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1  (
    .ADR0(rd_en),
    .ADR1(NlwRenamedSig_OI_empty),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00051 .INIT = 16'h6996;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00051  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [2]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0002 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0005 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00051 .INIT = 16'h6996;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00051  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [4]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [3]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0002 ),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0005 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00041 .INIT = 8'h96;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00041  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0004 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00041 .INIT = 8'h96;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00041  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [4]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0004 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00032 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00032  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0003 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00032 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00032  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0003 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1 .INIT = 4'h2;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1  (
    .ADR0(wr_en),
    .ADR1(NlwRenamedSig_OI_full),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00021 .INIT = 16'h6996;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00021  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [5]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [6]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7]),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0002 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00021 .INIT = 16'h6996;
  X_LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00021  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [6]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .ADR3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0002 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00011 .INIT = 8'h96;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00011  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0001 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00011 .INIT = 8'h96;
  X_LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00011  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [9]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .ADR2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0001 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0000_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0000_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0001_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0001_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0001 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0002_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0002_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0002 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0003_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0003_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0003 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0004_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0004_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0004 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0005_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0005_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0005 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0006_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0006_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0006 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0007_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/Mxor_pntr_gc_xor0007_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0007 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0000_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0000_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0001_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0001_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0001 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0002_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0002_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0002 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0003_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0003_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0003 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0004_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0004_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0004 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0005_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0005_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0005 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0006_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0006_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0006 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0007_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0007_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0007 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0008_Result1 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/Mxor_pntr_gc_xor0008_Result1  (
    .ADR0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1]),
    .ADR1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0008 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00001 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor00001  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00001 .INIT = 4'h6;
  X_LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor00001  (
    .ADR0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .ADR1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_B = 36'h000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_A = 20'h00000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .WRITE_MODE_A = "WRITE_FIRST";
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .WRITE_MODE_B = "WRITE_FIRST";
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .SRVAL_B = 36'h000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .SRVAL_A = 20'h00000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram .INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  X_RAMB16_S18_S36 \BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram  (
    .CLKA(wr_clk),
    .CLKB(rd_clk),
    .ENA(\BU2/U0/gen_as.fgas/N1 ),
    .ENB(\BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en ),
    .SSRA(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .SSRB(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .WEA(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .WEB(\BU2/overflow ),
    .ADDRA({\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7], 
\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4], 
\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1], 
\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [0]}),
    .ADDRB({\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6], 
\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3], 
\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]}),
    .DIA({din[15], din[14], din[13], din[12], din[11], din[10], din[9], din[8], din[7], din[6], din[5], din[4], din[3], din[2], din[1], din[0]}),
    .DIB({\BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , 
\BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , 
\BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , 
\BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow }),
    .DIPA({\BU2/overflow , \BU2/overflow }),
    .DIPB({\BU2/overflow , \BU2/overflow , \BU2/overflow , \BU2/overflow }),
    .DOA({
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[15]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[14]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[13]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[12]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[11]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[10]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[9]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[8]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[7]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[6]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[5]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[4]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[3]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[2]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[1]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOA[0]_UNCONNECTED }),
    .DOPA({
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPA[1]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPA[0]_UNCONNECTED }),
    .DOB({dout[15], dout[14], dout[13], dout[12], dout[11], dout[10], dout[9], dout[8], dout[7], dout[6], dout[5], dout[4], dout[3], dout[2], dout[1]
, dout[0], dout[31], dout[30], dout[29], dout[28], dout[27], dout[26], dout[25], dout[24], dout[23], dout[22], dout[21], dout[20], dout[19], dout[18]
, dout[17], dout[16]}),
    .DOPB({
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPB[3]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPB[2]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPB[1]_UNCONNECTED , 
\NLW_BU2/U0/gen_as.fgas/normgen.memblk/bmem.bmg.bmg_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp18x36.ram_DOPB[0]_UNCONNECTED })
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_0  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0007 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [0]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_1  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0006 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [1]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_2  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0005 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [2]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_3  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0004 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [3]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_4  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0003 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [4]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_5  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [5]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_6  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0001 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [6]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_7  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_xor0000 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [7]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_8  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [8]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_0  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [0]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_1  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [1]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_2  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [2]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_3  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [3]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_4  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [4]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_5  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [5]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_6  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [6]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_7  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [7]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_8  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [8]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_0  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [0]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_1  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [1]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_2  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [2]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_3  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_4  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_5  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [5]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_6  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [6]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_7  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_8  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_0  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0007 ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_1  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0006 ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_2  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0005 ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_3  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0004 ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_4  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0003 ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_5  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_6  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0001 ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_7  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_xor0000 ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_8  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_0  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0008 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [0]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_1  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0007 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [1]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_2  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0006 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [2]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_3  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0005 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [3]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_4  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0004 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [4]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_5  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0003 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [5]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_6  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [6]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_7  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0001 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [7]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_8  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_xor0000 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [8]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_9 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_9  (
    .CLK(wr_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [9]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_0  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [0]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_1  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [1]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_2  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [2]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_3  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [3]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_4  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [4]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_5  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [5]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_6  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [6]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_7  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [7]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_8  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [8]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_9 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_9  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [9]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_1  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [1]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_2  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [2]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_3  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [3]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_4  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [4]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_5  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_6  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [6]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_7  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_8  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_9 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_9  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [9]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_1  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0007 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [1]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_2  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0006 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [2]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_3  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0005 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_4  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0004 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_5  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0003 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_6  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0002 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_7  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0001 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_8  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_xor0000 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_9 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_9  (
    .CLK(rd_clk),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [9]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .CE(VCC_63),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/almost_full_i .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/almost_full_i  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/FULL_inv ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/almost_full_i_or0000 ),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .O(almost_full),
    .RST(GND_64)
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[4].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/comp_af2 )
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[3].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[2].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[1].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[0].fst.mfirst  (
    .IB(\BU2/U0/gen_as.fgas/N1 ),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [0])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[4].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/comp_af1 )
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[3].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[2].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[1].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[0].fst.mfirst  (
    .IB(\BU2/U0/gen_as.fgas/N1 ),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/almost_empty_i .INIT = 1'b1;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/almost_empty_i  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/EMPTY_inv ),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/almost_empty_i_or0000 ),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .O(almost_empty),
    .RST(GND_64)
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[4].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/comp_ae2 )
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[3].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[2].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[1].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[0].fst.mfirst  (
    .IB(\BU2/U0/gen_as.fgas/N1 ),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [0])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[4].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/comp_ae1 )
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[3].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[2].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[1].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[0].fst.mfirst  (
    .IB(\BU2/U0/gen_as.fgas/N1 ),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/RAM_FULL_i .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/RAM_FULL_i  (
    .CLK(wr_clk),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG ),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .O(NlwRenamedSig_OI_full),
    .CE(VCC_63),
    .RST(GND_64)
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[4].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full2 )
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[3].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[2].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[1].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[0].fst.mfirst  (
    .IB(\BU2/U0/gen_as.fgas/N1 ),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [0])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[4].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full1 )
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[3].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[2].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[1].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[0].fst.mfirst  (
    .IB(\BU2/U0/gen_as.fgas/N1 ),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/RAM_EMPTY_i .INIT = 1'b1;
  X_FF \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/RAM_EMPTY_i  (
    .CLK(rd_clk),
    .I(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG ),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .O(NlwRenamedSig_OI_empty),
    .CE(VCC_63),
    .RST(GND_64)
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[4].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp2out )
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[3].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[2].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[1].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[0].fst.mfirst  (
    .IB(\BU2/U0/gen_as.fgas/N1 ),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [0])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[4].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp1out )
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[3].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[2].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[1].mid.mcy  (
    .IB(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[0].fst.mfirst  (
    .IB(\BU2/U0/gen_as.fgas/N1 ),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [0])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_0 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_1 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_1 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_2 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_2 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_3 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_3 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_4 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_4 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_5 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_5 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_6 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_6 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_7 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_7 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_8 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_8 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .IB(\BU2/overflow ),
    .IA(\BU2/U0/gen_as.fgas/N1 ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [0]),
    .SET(GND_64)
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_9 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_10 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_10 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_11 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_11 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_12 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_12 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_13 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_13 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_14 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_14 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_15 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_15 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_16 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_16 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_17 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_17 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .IB(\BU2/overflow ),
    .IA(\BU2/U0/gen_as.fgas/N1 ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [9]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [8]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [6]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [5]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [7]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [3]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [2]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [4]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b1;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [0]),
    .RST(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [1]),
    .SET(GND_64)
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_18 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_19 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_19 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_20 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_20 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_21 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_21 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_22 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_22 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_23 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_23 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_24 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_24 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_25 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_25 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_26 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_26 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .IB(\BU2/overflow ),
    .IA(\BU2/U0/gen_as.fgas/N1 ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [9]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [8]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [6]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [5]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [7]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [3]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [2]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [4]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [0]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b1;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .O(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [1]),
    .RST(GND_64)
  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>_rt_27 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_28 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>_rt_28 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_29 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_29 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_30 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_30 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_31 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_31 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_32 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_32 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_33 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_33 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_34 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_34 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_35 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_35 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])

  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .IB(\BU2/overflow ),
    .IA(\BU2/U0/gen_as.fgas/N1 ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])

  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [9]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [8]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [6]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [5]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [7]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [3]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [2]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [4]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b1;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [0]),
    .RST(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b1;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus3.bld_wr_cntr_plus3/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [1]),
    .RST(GND_64)
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_36 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_37 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_37 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_38 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_38 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_39 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_39 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_40 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_40 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_41 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_41 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_42 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_42 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .I1(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_43 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .IA(\BU2/overflow ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_43 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .IB(\BU2/overflow ),
    .IA(\BU2/U0/gen_as.fgas/N1 ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]),
    .SET(GND_64)
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_44 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_45 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_45 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_46 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_46 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_47 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_47 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_48 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_48 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_49 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_49 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_50 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_50 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  X_XOR2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .I0(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_51 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .IB(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_51 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  X_MUX2 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .IB(\BU2/overflow ),
    .IA(\BU2/U0/gen_as.fgas/N1 ),
    .SEL(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [8]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [7]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [5]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [4]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [6]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [3]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [2]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b1;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [0]),
    .RST(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .O(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [1]),
    .SET(GND_64)
  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>_rt_52 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_53 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>_rt_53 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_54 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>_rt_54 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_55 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>_rt_55 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_56 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>_rt_56 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_57 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>_rt_57 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_58 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>_rt_58 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])

  );
  X_XOR2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .I0
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
,
    .I1
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_59 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .IB
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
,
    .IA(\BU2/overflow ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>_rt_59 )
,
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])

  );
  X_MUX2
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .IB(\BU2/overflow ),
    .IA(\BU2/U0/gen_as.fgas/N1 ),
    .SEL
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])

  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [8]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [7]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [5]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [4]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [6]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [3]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [2]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b0;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .RST(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [0]),
    .SET(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b1;
  X_FF
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/DEBUG_RAM_RD_EN ),
    .I
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .SET(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .O
(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus2.bld_rd_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count [1]),
    .RST(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg  (
    .CLK(rd_clk),
    .CE(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .I(\BU2/overflow ),
    .SET(rst),
    .O(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg_62 ),
    .RST(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb  (
    .CLK(wr_clk),
    .I(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg_60 ),
    .SET(rst),
    .O(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .CE(VCC_63),
    .RST(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg  (
    .CLK(wr_clk),
    .CE(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_61 ),
    .I(\BU2/overflow ),
    .SET(rst),
    .O(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg_60 ),
    .RST(GND_64)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int_0 .INIT = 1'b0;
  X_FF \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int_0  (
    .CLK(rd_clk),
    .I(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg_62 ),
    .SET(rst),
    .O(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_fb ),
    .CE(VCC_63),
    .RST(GND_64)
  );
  X_ONE \BU2/U0/gen_as.fgas/XST_VCC  (
    .O(\BU2/U0/gen_as.fgas/N1 )
  );
  X_ZERO \BU2/U0/gen_as.fgas/XST_GND  (
    .O(\BU2/overflow )
  );
  X_ONE NlwBlock_fifo_U2X_2C_1024B_VCC (
    .O(VCC_63)
  );
  X_ZERO NlwBlock_fifo_U2X_2C_1024B_GND (
    .O(GND_64)
  );
endmodule


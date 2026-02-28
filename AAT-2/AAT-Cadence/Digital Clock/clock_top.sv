// -----------------------------------------------------------------------------
// File        : clock_top.sv
// Author      : Nirvara Reddy (1BM23EC170)
// Created     : 2026-02-28
// Module      : clock_top
// Project     : SystemVerilog and Verification (23EC6PE2SV),
//               Faculty: Prof. Ajaykumar Devarapalli
// Description : Digital clock top module
// -----------------------------------------------------------------------------

`timescale 1ns/1ps

module clock_top;

    logic clk;
    initial clk = 0;
    always #5 clk = ~clk;

    clock_interface intf(clk);

    digital_clock dut (
        .clk(intf.clk),
        .reset(intf.reset),
        .seconds(intf.seconds),
        .minutes(intf.minutes)
    );

    clock_test test(intf);

    initial begin
      $dumpfile("digital_clock.vcd");
      $dumpvars(0,clock_tb);
    end

endmodule

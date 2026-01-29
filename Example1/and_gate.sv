//------------------------------------------------------------------------------
//File       : and_gate.sv
//Author     : Nirvara Reddy/1BM23EC170
//Created    : 2026-01-20
//Module     : and_gate
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: 2-input AND gate used for basic functional coverage example.
//------------------------------------------------------------------------------

module and_gate(input logic a, b, output logic y);
    assign y=a&b;
endmodule

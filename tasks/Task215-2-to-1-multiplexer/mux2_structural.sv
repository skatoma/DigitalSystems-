module mux2_structural (output logic y, input logic a, b, s);

// Write HDL here
//internal wires
wire inv_s;
wire term0;
wire term1;
//place and connect gates
assign inv_s=~s;
assign term0=inv_s & a;
assign term1= b&s;
assign y= term0|term1;

endmodule
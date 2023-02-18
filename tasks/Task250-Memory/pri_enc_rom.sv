module pri_enc_rom (output logic [2:0] y, input logic A, B, C);

 always_comb
	unique casez ({A,B,C})
		3'b111 : y = 3'b111;
		3'b110 : y = 3'b110;
		3'b101 : y = 3'd101;
		3'b10? : y = 3'd101;
                3'b01? : y = 3'd100;
                3'b001 : y= 3'b100;
		default : y = 3'd0;
	endcase
endmodule


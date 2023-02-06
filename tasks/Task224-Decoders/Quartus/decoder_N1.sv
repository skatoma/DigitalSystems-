module decoder_N1 #(parameter N = 8) (	output logic [N-1:0] Y, input logic [($clog2(N))-1 : 0] SEL);
												
	always_comb
		Y = 1'b1 << SEL;
													
endmodule
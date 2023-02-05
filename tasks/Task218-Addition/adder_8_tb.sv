module adder_8_tb.sv;

	parameter N = 4;

	logic [N-1:0] P, Q;
	logic [N-1:0] SUM;
        
        logic [7:4] P1, Q1;
	logic [7:4] SUM1;
        
	logic Cout;
	logic Cin;

        logic Cout1;
	logic Cin1;
	
	//Most significant bit of SUM = Cout
	adder_N #(.N(N)) u1(SUM, Cout, P, Q, Cin);
        adder_N #(.N(N)) u2(SUM1, Cout1, P1, Q1, Cout);
	initial 
	begin
	  automatic int S;
	  for (int c = 0; c<= 1; c = c + 1) begin
            Cin = c;
	    for (int i=0; i<2**N; i = i + 1) begin
              for (int j=i; j<2**N; j = j + 1) begin
                P = i;
                Q = j;
		S = c + i + j;	//Integer summation
                #10ps;
		assert ({Cout,SUM} == S) $display("PASS"); else $display("ERROR %d + %d + %d <> %d", c, i, j, SUM);
              end
            end
	  end
	end
endmodule
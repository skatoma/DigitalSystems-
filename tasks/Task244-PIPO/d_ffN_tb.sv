//D-Type Flip-Flop (with asynchronous reset)
module d_ffN_tb;
logic [8-1:0] Q;
logic [8-1:0] D,  CLK, n_res, EN;
logic [8-1:0] D1;
//logic [8-1:0] q_int;

d_ffN #(.N(8)) u2 (Q,  D, CLK, n_res, EN);

initial
begin
//Initialise
	D = 0;
	n_res = 0;
	#10ps;
	n_res = 1;
        D1= 8'b10100110;
        for (int n=0; n<8; n = n + 1) begin
         
         //Test for when D = 1
	 @(negedge CLK);	//Wait for negative edge of clock
	  D=(D1>>n); //Set D = 1
	  @(posedge CLK);	//Wait for positive edge of clock
	  #1 assert(Q == D) $display("PASS"); else $error("FAIL");	//Check Q

       
	end
        
      
end
endmodule
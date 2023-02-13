// JK Flip-Flop
module jkff_tb;
logic Q; 
logic J, K, CLK;
jkff u2(Q,J,K,CLK);
//Generate 5 clock cycles
initial begin
	CLK=0;
     	repeat(20) 
		#50ps CLK = ~CLK;  
end 
initial begin
 // initialise
J=0;
K=0;
@(posedge CLK);
@(negedge CLK);

//when J=1 & K=0
 @(posgedge CLK)// wait for negative edge
 J=1;
 K=0;
 @(negedge CLK);
 assert(Q==1) $display("PASS"); else $error("Fail");

 //when J=0 & K=1
 @(posedge CLK)// wait for negative edge
 J=0;
 K=1;
 @(negedge CLK);
 assert(Q==0) $display("PASS"); else $error("Fail");

  //when J=1 & K=1
 @(posedge CLK)// wait for negative edge
 J=1;
 K=1;
 @(negedge CLK);
@(posedge CLK);
@(negedge CLK);
 assert(Q==1) $display("PASS"); else $error("Fail");

  //when J=0 & K=0
 @(posedge CLK)// wait for negative edge
 J=0;
 K=0;
 @(negedge CLK);

 assert(Q==1) $display("PASS"); else $error("Fail");

end



endmodule
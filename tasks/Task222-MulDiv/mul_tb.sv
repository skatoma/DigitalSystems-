module mul_tb;

parameter N = 4;

//These are unsigned by default
logic [2*N - 1 : 0] Y;
logic [N-1:0] A, B;

//Connect the multiplier
mul m1(Y,A,B);

initial
begin
	//Write test code here
//testing lower extreme
A=4d0;
B=4d0;
//Add a delay so that the outputs update
		#10ps;
assert (Y==8d0)
 $display("correct %d * %d is %d",A,A,Y);
else 
 $display("error %d * %d is not %d",A,A,Y);

  
//testing upper extreme
A=4d15;
B=4d15;
//Add a delay so that the outputs update
		#10ps;
assert (Y==8d225)
 $display("correct %d * %d is %d",A,A,Y);
else 
 $display("error %d * %d is not %d",A,A,Y);


end

endmodule
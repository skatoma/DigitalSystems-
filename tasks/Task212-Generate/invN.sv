// Example of generate for to replicate hardware
module invN #(parameter N=4) (output logic[N-1:0] Y, input logic[N-1:0] X);

//An integer that will never be represented in the final synthesis
genvar i;
//Modify the component so that only alternative inputs are inverted
//The even bits should be inverted. The odd bits should pass straight through
//this is for 4 bits

generate 
 for (i=0; i<N; i=i+1) 
 begin : i_loop1
   if (i==1)
	  assign Y[i] = X[i];
	else if (i==3)  
	  assign Y[i] = X[i];
   else
	 assign Y[i] = ~X[i];
   end
endgenerate

endmodule

//generate 
// for (i=0; i<N; i=i+1) 
// begin : i_loop1
//	not ui (Y[i], X[i]);
// end
//endgenerate
//
//endmodule


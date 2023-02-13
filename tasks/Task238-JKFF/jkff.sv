module jkff(output logic Q, input logic J,K,CLK);
 always_ff @(negedge CLK) begin
  if ((K==1)&&(J==0))
   Q<=0;
  else if ((J==1)&&(K==0))
   Q<=1;
  else if ((J==1) &&(K==1))
   Q<= ~Q;
  
 end


endmodule
module counterN #(parameter N=8) (
	output logic [N-1:0] Y, 
	input  logic CLK, 
	input  logic DIR,
	input logic N_RESET );

logic [N-1:0] count;

//Connect output to internal register count
assign Y = count;

always_ff @(posedge CLK) begin
	if (N_RESET == 0) 
		count <= 0;
	else
	  if (DIR==1) begin
	   if (count==255) begin
		  count=0;
		end  
		count <= count + 1;
	  end	
	  else if (DIR==0) begin
	     if (count==0) begin
		  count=255;
		  end  
	     count <= count - 1;
	  end 
end	 
		  


endmodule


 
module fsm_tb;

logic clk, x, reset, Q_moore, Q_mealy;

//Instantiate both FSM types
fsm_mealy u1(.clk(clk), .reset(reset), .X(x), .Q(Q_mealy));
fsm_moore u2(.clk(clk), .reset(reset), .X(x), .Q(Q_moore));

initial begin
   reset = '0;
   #10ps reset = '1;
end

initial begin

   //Generate clock here   
   clk = 0;
	repeat(20) begin
		#50ps;
		clk = ~clk;
	end

end

initial begin
   x = '0;
   @(negedge clk);
   
   //Write tests here
  //x=0
  @(posedge clk);
  #1assert(Q_mealy==Q_moore) $display("Pass"); else $error("Fail");
  @(negedge clk);

   //x=1
   x = '1;
  @(posedge clk);
  #1assert(Q_mealy==Q_moore)$display("Pass"); else $error("Fail");
  @(posedge clk);
  #1assert((Q_mealy==Q_moore)&&(Q_mealy==0)) $display("Pass"); else $error("Fail");

  @(negedge clk);
   //reset=0
  reset = '0;
  @(posedge clk);
  #1assert((Q_mealy==Q_moore)&&(Q_mealy==0)) $display("Pass"); else $error("Fail");
    @(posedge clk);
  #1assert((Q_mealy==Q_moore)&&(Q_mealy==0)) $display("Pass"); else $error("Fail");

end

endmodule


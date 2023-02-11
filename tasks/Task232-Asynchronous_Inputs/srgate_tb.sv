module srgate_tb;

//Internal signals
logic Q, Qbar;
logic S, R, n_reset;
//Instantiate and connect
srgate u1(Q, Qbar, S, R, n_reset);

initial
begin
     //Initial state
      #10;
      assert (Q === 1'bx) $display("Pass"); else $error("Fail");
      assert (Qbar === 1'bx) $display("Pass"); else $error("Fail");
     //Inputs both zero - initial state
	{S,R} = 2'b00;
	#10;
	assert (Q === 1'bx) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'bx) $display("Pass"); else $error("Fail");

	//S=1
	{S,R} = 2'b10;
	#10;
	assert (Q === 1'b1) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'b0) $display("Pass"); else $error("Fail");	
	
	//Latched HIGH
	{S,R} = 2'b00;
	#10;
	assert (Q === 1'b1) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'b0) $display("Pass"); else $error("Fail");	

	//R=1
	{S,R} = 2'b01;
	#10;
	assert (Q === 1'b0) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'b1) $display("Pass"); else $error("Fail");	
	
	//Latched HIGH
	{S,R} = 2'b00;
	#10;
	assert (Q === 1'b0) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'b1) $display("Pass"); else $error("Fail");	

	//Illegal Condition
	{S,R} = 2'b11;
	#10;
	assert (Q === 1'bz) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'bz) $display("Pass"); else $error("Fail");	
     
        
        // testing the nreset
        n_reset = 0;
        #10;
        assert (Q === 1'b0) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'b0) $display("Pass"); else $error("Fail");	
        
          //S=1
	{S,R} = 2'b10;
	#10;
	assert (Q === 1'b0) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'b0) $display("Pass"); else $error("Fail");	
        
        {S,R} = 2'b00;
	#10;
	assert (Q === 1'b0) $display("Pass"); else $error("Fail");
	assert (Qbar === 1'b0) $display("Pass"); else $error("Fail");
end


endmodule

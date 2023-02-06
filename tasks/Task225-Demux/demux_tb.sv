module demux_tb;

logic [7:0] Y;  
logic D; 
logic[2:0] SEL;


demux u1( Y, D,SEL);

  //Unpacked array of expected (correct) outputs. Automatic means this has local scope
// logic expected[8] = {8'b00000001,8'b00000010,8'b00000100,8'b00001000,8'b00010000,8'b00100000, 8'b01000000,8'b10000000};
 int expected=1;
 logic test;

 initial
 begin
 
 D=0;
 test= 0;
 //Add a lay so that the outputs update
    #10ps;
     //Check output is the expected value
    assert(Y==test)
          $display("Passed test");
    else
          $display("Failed test");
    

   D=1;
 
  //Add a delay so that the outputs update
   #10ps;
 //Add a delay so that the outputs update
      for ( int n=0; n<8; n = n + 1)
	begin
           SEL=n;
           test=expected; 
           test= (test<<n);
            //Add a delay so that the outputs update
           //#10ps;
           assert(Y==test)
             $display("Passed test");
           else
            $display("Failed test");
           
	end
 
  end
endmodule
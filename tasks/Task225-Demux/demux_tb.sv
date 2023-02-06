module demux_tb (output logic [7:0] Y, input logic D, input logic [2:0] SEL);
demux u1( Y, D,SEL);

  //Unpacked array of expected (correct) outputs. Automatic means this has local scope
 logic expected[8] = {8'b00000001,8'b00000010,8'b00000100,8'b00001000,8'b00010000,8'b00100000, 8'b01000000,8'b10000000};
 
initial
begin

 D=0;

 //Add a lay so that the outputs update
 #10ps;
     //Check output is the expected value
  assert (Y == 8'd0)
           $display("Passed test %d");
  else
            $display("Error for test ");	
  end
  
  D=1;
  //Add a delay so that the outputs update
   #10ps;

 //Add a delay so that the outputs update
  
      for (n=0; n<8; n = n + 1)
	begin
           SEL=n;
            //Add a delay so that the outputs update
           #10ps;
           assert(Y==expected[n])
             $display("Passed test");
           else
            $display("Failed test");
           end
	end
  
end
endmodule
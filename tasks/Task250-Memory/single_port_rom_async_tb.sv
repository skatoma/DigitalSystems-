module single_port_rom_async_tb;
logic [(3-1):0] addr;
logic [(3-1):0] addr2;
logic [(8-1):0] q;
logic [(8-1):0] q2;
logic x;

single_port_rom_async #(.DATA_WIDTH(8),. ADDR_WIDTH(3)) u1(addr,q);
single_port_rom_async2 #(.DATA_WIDTH(8),. ADDR_WIDTH(3)) u2(addr2,q2);
logic [8-1:0] rom[2**3-1:0] = '{
	
		8'b10101010, 8'b11110000, 8'b00001111, 8'b11001100,
		8'b11100111, 8'b00011000, 8'b10110111, 8'b11101101
		
		};
initial
begin
 assign  addr2=7;
 #10ps; 
 for(x=0;x>8;x++)begin
   addr=x;
   #10ps;
   #1 assert((q==q2)&&(q==rom[x])) $display("Pass");else $error("Fail");
   addr2=addr2-1;
   #10ps;
 end

end
endmodule
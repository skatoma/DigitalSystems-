module srgate_tb;
logic Q;
logic Qbar;
logic S;
logic R;

srgate u1( Q, Qbar, S, R);

initial
begin
 S=1;
 R=0;
 #10ps;
 assert({Q,Qbar}===2'b10)
    $display("Pass test1");
 else
     $display("Fail test1");

 S=0;
 R=1;
 #10ps;
 assert({Q,Qbar}===2'b01)
    $display("Pass test2");
 else
     $display("Fail test2");

 S=1;
 R=1;
 #10ps;
 assert({Q,Qbar}===2'bzz)
    $display("Pass test3");
 else
     $display("Fail test3");
end
endmodule




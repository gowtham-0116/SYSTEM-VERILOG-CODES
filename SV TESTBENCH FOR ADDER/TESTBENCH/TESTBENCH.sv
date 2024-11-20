`include "interface.sv"
`include "test.sv"

module adder_tb;
  addertest test;
  mailbox mail;
  operation intf();
  adder dut(.a(intf.a), .b(intf.b),.c_out(intf.c_out));
  initial begin
    mail = new();
    test = new(intf,mail);
    fork
      test.memory;
      test.run;
    join
  end
 
    /*intf.a =5;
    intf.b =5; #10;*/
          
    
  
  
  initial begin
    $monitor("time =%0t,a=%d,b=%d,c_out=%d",$time,intf.a,intf.b,intf.c_out);
    #400; $finish; 
  end
endmodule

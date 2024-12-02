`include "environment.sv"
`include "interface.sv"

module tb;
  environment env;
  inter intf();
  fifo gut(.clk(intf.clk),.reset(intf.reset),.wr(intf.wr),.rd(intf.rd),.din(intf.din),.dout(intf.dout),.full(intf.full),.empty(intf.empty));
  initial begin
    intf.clk=1'b0;
   // intf.reset=1'b1;
    //#20 intf.reset=1'b0;
  end
  always#10intf.clk=~intf.clk;
  initial begin
    env=new(intf);
    env.gnt.count=30;
    env.run();
  end
  initial begin
    $monitor("clk=%0d reset=%0d din=%0d dout=%0d",$time,intf.clk,intf.reset,intf.dout);
    $dumpfile("fifo.vcd");
    $dumpvars(0);
    #1000
    $finish;
    end
endmodule
  

// Code your testbench here
// or browse Examples
class packet;
  rand bit[3:0] addr;
  constraint addr_range{addr>5;}
endclass

module rand_methods;
  initial begin
    packet pkt;
    pkt=new();
    repeat(7) begin
      pkt.randomize();
      $display("addr = %0d",pkt.addr);
    end
  end
endmodule

/*output
addr = 9
addr = 12
addr = 9
addr = 6
addr = 12
addr = 8
addr = 12

*/

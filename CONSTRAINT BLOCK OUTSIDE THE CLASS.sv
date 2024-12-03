// Code your testbench here
// or browse Examples
class packet;
  rand bit[3:0] addr;
  constraint addr_range;
endclass

constraint packet::addr_range {addr > 7;}

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
addr = 12
addr = 14
addr = 11
addr = 13
addr = 11
addr = 10
addr = 14

*/

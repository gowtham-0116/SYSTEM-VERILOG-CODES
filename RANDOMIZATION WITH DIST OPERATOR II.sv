// Code your testbench here
// or browse Examples
class packet;
  rand bit[3:0] addr_1;
  rand bit[3:0] addr_2;
  
  constraint addr_1_range{ addr_1 dist {2:=5,[10:12] := 8}; }
  constraint addr_2_range{ addr_2 dist {2:/5,[10:12] :/ 8}; }
endclass
  
module constr_dist;
    initial begin
      packet pkt;
      pkt=new();
      repeat(10) begin
        pkt.randomize();
        $display("addr_1 = %0d",pkt.addr_1);
      end
      repeat(10) begin
        pkt.randomize();
        $display("addr_2 = %0d",pkt.addr_2);
      end
    end
endmodule
  

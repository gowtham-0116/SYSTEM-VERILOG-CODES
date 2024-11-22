class packet;
  rand bit[3:0] addr1;
  randc bit[3:0] addr2;
endclass

module rand_methods;
  initial begin
    packet pkt;
    pkt=new();
    repeat(12) begin
      pkt.randomize();
      $display("addr1 = %0d  addr2 = %0d",pkt.addr1,pkt.addr2);
     end
    end
 endmodule

/*OUTPUT  
addr1 = 12  addr2 = 2
addr1 = 6  addr2 = 15
addr1 = 3  addr2 = 12
addr1 = 13  addr2 = 13
addr1 = 11  addr2 = 7
addr1 = 2  addr2 = 6
addr1 = 6  addr2 = 0
addr1 = 12  addr2 = 11
addr1 = 6  addr2 = 14
addr1 = 11  addr2 = 9
addr1 = 2  addr2 = 5
addr1 = 6  addr2 = 8*/

// Code your testbench here
// or browse Examples
class packet;
  bit[31:0]addr;
  bit[31:0]data;
  bit write;
  string pkt_type;
  function new(bit[31:0]addr,dta,bit write,string pkt_type);
    addr=addr;
    data=data;
    write=write;
    pkt_type=pkt_type;
    endfunction
  
  function void display();
    $display("-------------------------------");
    $display(" addr = %0h",addr);
    $display(" data = %0h",data);
    $display(" write = %0h",write);
    $display(" pkt_type = %0s",pkt_type);
  endfunction
endclass

module sv_constructor;
  packet pkt;
  initial
    begin
      pkt = new(32'h10,32'hff,1,"GOOD_PACKET");
      pkt.display();
    end
endmodule
 
/*OUTPUT

 -------------------------------
 addr = 0
 data = 0
 write = 0
 pkt_type = */
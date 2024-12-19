// Code your testbench here
// or browse Examples
class packet;
  integer i=1;
   virtual function integer init();
    init =i;
  endfunction
endclass

class child_packet extends packet;
  integer i=2;
  function integer init();
    init =-i;
  endfunction
endclass

module class_example;
  int j;
  initial begin
    child_packet c1=new();
    //c1=;
    packet p1 = c1;
    $display("value of i = %0d",p1.i);
    j=p1.init();
    $display("value of j = %0d",j);
  end
endmodule

/*OUTPUT
value of i = 1
value of j = -2*/
  

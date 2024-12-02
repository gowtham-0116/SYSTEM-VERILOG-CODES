// Code your testbench here
// or browse Examples
class parent_cls;
  int data;
  function address(int m_data);
    data=m_data;
  endfunction
endclass

class child_cls extends parent_cls;
  int addr;
  function display();
    $display("value of addr = %0h",addr);
  endfunction
endclass

module class_ex;
  initial 
    begin
      child_cls c1;
      c1=new();
      c1.address(10);
      $display("value of data = %0d",c1.data);
      
      c1.addr=15;
      c1.display();
    end
endmodule

      /*output
         value of data = 10
         value of addr = f
      */

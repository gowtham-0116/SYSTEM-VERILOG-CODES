// Code your testbench here
// or browse Examples
 

class parent_cls;
  int add;
  function add_fn(int a,int b);
    add=a+b;
  endfunction
endclass

class child_1_cls extends parent_cls;
  int sub;
  function sub_fn(int a,int b);
    sub=a-b;
  endfunction
endclass

class child_2_cls extends child_1_cls;
  int mul;
  function mul_fn(int a,int b);
    mul=a*b;
  endfunction
endclass

module class_ex;
  initial begin
    child_2_cls c1;
    c1=new();
    
    c1.add_fn(5,6);
    c1.sub_fn(5,6);
    c1.mul_fn(5,6);
    
    $display("value of add = %0d sub = %0d mul =%0d",c1.add,c1.sub,c1.mul);
  end
endmodule

/* output
value of add = 11 sub = -1 mul =30*/
    
    
  

// Code your testbench here
// or browse Examples
class parent_cls;
int add;
int sub;

function calculation (int a,int b);
  add=a+b;
  sub=a-b;
endfunction
endclass

class child_cls extends parent_cls;
  int mul;
  function calculation(int a,int b);
    super.calculation(a,b);
    mul=a*b;
  endfunction
endclass

module class_example;
  initial begin
    child_cls c1;
    c1=new();
    
    c1.calculation(10,20);
    $display("value of add = %0d sub = %0d mul = %0d",c1.add,c1.sub,c1.mul);
             end
             endmodule
/*output
value of add = 30 sub = -10 mul = 200*/

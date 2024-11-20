// Code your design here
module adder(
  input bit[3:0]a,
  input bit [3:0]b,
  output bit [5:0] c_out);
  
  assign c_out = a+b;
endmodule
  

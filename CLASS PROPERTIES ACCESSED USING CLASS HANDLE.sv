class sample;
  static int s_count = 5;
endclass

module class_example;
  sample s1;
  initial 
    begin
      $display("value of s_count using class handle = %0d",s1.s_count);
    end
endmodule

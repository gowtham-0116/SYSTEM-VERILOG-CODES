class sample;
  static int s_count=10;
  static function count_fun();
    s_count++;
  endfunction
endclass

module class_example;
  sample s1;
  initial 
    begin
      sample::count_fun();
      $display("value of s_count using class name is = %0d",sample::s_count);
    end
endmodule

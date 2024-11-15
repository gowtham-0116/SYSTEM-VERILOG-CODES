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
      s1.count_fun();
      $display("value of s_count using class handle is = %0d",s1.s_count);
    end
endmodule

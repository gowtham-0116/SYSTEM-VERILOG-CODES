module string_testbench;
  string my_string;

  initial begin
    my_string = "SystemVerilog";
    $display("Original string: %s", my_string);

    $display("ASCII value of first character: %0d", my_string.getc(0));

    $display("String in capital letters: %s", my_string.toupper());

    my_string = {my_string, "3.1a"};
    $display("Concatenated string: %s", my_string);

    my_string[my_string.len()-1] = "b";
    $display("String after replacing last character: %s", my_string);

    my_string = my_string.substr(1, 4);
    $display("Substring from 2nd to 5th character: %s", my_string);
  end
endmodule

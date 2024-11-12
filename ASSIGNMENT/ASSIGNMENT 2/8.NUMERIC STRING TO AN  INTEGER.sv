/*8. Write a module that converts a numeric string (e.g., "12345") to an integer and performs
arithmetic on it. For example, add 100 to the integer and display the result*/

module string_to_integer();
    string num_str;           
    int num;              
    int result;

    initial begin
        num_str = "12345";
        num = num_str.atoi();
        result = num + 100;
        $display("Original string: %s", num_str);
        $display("Converted integer: %0d", num);
        $display("Result after adding 100: %0d", result);
    end
endmodule

/*Output
Original string: 12345
Converted integer: 12345
Result after adding 100: 12445*/ 

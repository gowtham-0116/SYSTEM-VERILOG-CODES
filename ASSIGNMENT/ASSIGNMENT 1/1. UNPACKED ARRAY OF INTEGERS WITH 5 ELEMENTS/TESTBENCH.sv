/*Write a function that sums all elements in a 1-dimensional unpacked array of integers with 5 elements.*/
  
 module test;
    int my_array[5] = {1, 2, 3, 4, 5};
    int result;

    initial begin
        result = sum_array(my_array);
        $display("Sum of array elements: %0d", result);
    end
endmodule

/*Output

 Sum of array elements: 15*/

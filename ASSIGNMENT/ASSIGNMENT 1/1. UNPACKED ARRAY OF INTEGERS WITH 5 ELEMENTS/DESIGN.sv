/*Write a function that sums all elements in a 1-dimensional unpacked array of integers with 5 elements.*/
function int sum_array(input int array[5]);
    int sum;
    sum = 0;
    for (int i = 0; i < 5; i++) begin
        sum += array[i];
    end
    return sum;
endfunction

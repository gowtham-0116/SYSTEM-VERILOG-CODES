module associative_array();
  bit[7:0] array [int];
  int key;
  
  initial begin
    array = '{7:2,10:4,2:6,9:8,30:10,13:12,5:10};
    
    $display("Total elements using num() method = %0d",array.num());
    
    array.first(key);
    $display("First element of array = %0d",key);
    
    array.last(key);
    $display("Last element of array = %0d",key);
    
    array.prev(key);
    $display("Previous element of 30 is = %0d",key);
    
    key = 9;
    array.next(key);
    $display("Next element of 9 is = %0d",key);
    
    if(array.exists(5))
      $display("An element exists at index = 5");
    else
      $display("An element dosen't exists at index");
    
    array.delete(3);
    $display("Elements are = %p",array);
    
    array.delete();
    $display("Size of the array is = %0d",array.size());
    
  end
endmodule

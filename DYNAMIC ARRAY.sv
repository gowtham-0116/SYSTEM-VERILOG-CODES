module dynamic_array;
  int dyn_arr[];
  initial begin
    
    $display("Default Size of dyn_arr=%0d",dyn_arr.size());
    
    dyn_arr=new[4];
    dyn_arr='{1,2,3,4};
    
    $display(" Size of  dyn_arr=%0d",dyn_arr.size());
    
    foreach (dyn_arr[i])
      $display("dyn_arr[%0d] = %0d",i,dyn_arr[i]);
    
    dyn_arr=new[7](dyn_arr);
    $display("Size of dyn_arr after resizing=%0d",dyn_arr.size());
    
    foreach (dyn_arr[i])
      $display("dyn_arr[%0d] = %0d",i,dyn_arr[i]);
    
    dyn_arr=new[10];
    $display("Size of dyn_arr after resizing=%0d",dyn_arr.size());
    
    foreach (dyn_arr[i])
      $display("dyn_arr[%0d] = %0d",i,dyn_arr[i]);
    
    dyn_arr.delete();
    $display("Size of dyn_arr after deleting=%0d",dyn_arr.size());
  end
endmodule

// Code your testbench here
// or browse Examples
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



/*output
    Default Size of dyn_arr=0
 Size of  dyn_arr=4
dyn_arr[0] = 1
dyn_arr[1] = 2
dyn_arr[2] = 3
dyn_arr[3] = 4
Size of dyn_arr after resizing=7
dyn_arr[0] = 1
dyn_arr[1] = 2
dyn_arr[2] = 3
dyn_arr[3] = 4
dyn_arr[4] = 0
dyn_arr[5] = 0
dyn_arr[6] = 0
Size of dyn_arr after resizing=10
dyn_arr[0] = 0
dyn_arr[1] = 0
dyn_arr[2] = 0
dyn_arr[3] = 0
dyn_arr[4] = 0
dyn_arr[5] = 0
dyn_arr[6] = 0
dyn_arr[7] = 0
dyn_arr[8] = 0
dyn_arr[9] = 0*/

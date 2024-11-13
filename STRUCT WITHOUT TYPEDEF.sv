module struct_example;
  struct {
     string name;
    int roll_no;
    int mark;
  }student_detail;
  
  initial begin
    student_detail.name = "Gowtham";
    student_detail.roll_no = 01;
    student_detail.mark = 404;
    
    $display("Student: Name = %s,roll_no = %0d,mark = %0d",student_detail.name,student_detail.roll_no,student_detail.mark);
  end 
endmodule

/*Output:
 Student: Name = Gowtham,roll_no = 1,mark = 404*/

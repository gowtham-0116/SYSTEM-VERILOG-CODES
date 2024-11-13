module struct_example();
  typedef struct {
     string name;
    int age;
    int mark;
  }student_detail;
  student_detail st1,st2;

  initial begin
    st1.name = "Gowtham";
    st1.age = 22;
    st1.mark = 404;
    
    st2.name = "Hey prabhu";
    st2.age = 22;
    st2.mark = 404;
    
    $display("Student:Name = %s,age = %0d,mark = %0d",st1.name,st1.age,st1.mark);
    $display("Student:Name = %s,age = %0d,mark = %0d",st2.name,st2.age,st2.mark);
    end
endmodule

/*Output:
 Student:Name = Gowtham,age = 22,mark = 404
 Student:Name = Hey prabhu,age = 22,mark = 404 */

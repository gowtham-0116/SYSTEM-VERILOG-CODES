module queue_example;
  typedef struct {
    string student_name;
    int age;
    int mark[];
  } st_detail;
  
  st_detail q1[$],q2[$];
  
  initial begin
    q1.push_back('{"aaa",23,'{80,85,67,92,85}});
    q1.push_back('{"bbb",22,'{87,81,77,98,95}});
    q2.push_front('{"aaa",23,'{80,85,67,92,85}});
    q2.push_front('{"bbb",22,'{87,81,77,98,95}});
    
    $display("Push_back method results %p",q1);
    $display("Push_front method results %p",q2);
  end
endmodule

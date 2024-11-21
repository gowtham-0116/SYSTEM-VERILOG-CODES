// Code your testbench here
// or browse Examples
 class packet;
   rand bit [3:0] a;
   rand bit [3:0] b;
   rand bit [3:0] c;
   
   constraint a_value {a==b+c;}
   constraint b_value {b>6;} 
   constraint c_value {c<10;}
 endclass

module bidirectional_constr;
  initial begin
    packet pkt;
    pkt = new();
    repeat(5) begin
      pkt.randomize();
      $display("value of a= %0d b=%0d c=%0d",pkt.a,pkt.b,pkt.c);
    end
  end
endmodule

/*OUTPUT
 value of a= 11 b=8  c=3
 value of a= 1  b=9  c=8
 value of a= 5  b=15 c=6
 value of a= 9  b=7  c=2
 value of a= 0  b=11 c=5*/
      
   
   

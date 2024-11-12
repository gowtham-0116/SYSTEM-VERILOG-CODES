// Code your testbench here
// or browse Examples
module enum_example();
  typedef enum {CARROT,
                BRINJAL,
                ONION,
                POTOTO,
                TOMOTO} veg_e;
  veg_e veg1,veg2,veg3;
  
  initial begin
    veg1=ONION;
    veg2=CARROT;
    veg3=POTOTO;
    $display("veg1=%s\nveg2=%s\nveg3=%s",veg1.name(),veg2.name(),veg3.name());
  end
endmodule

/*Output:
   veg1=ONION
   veg2=CARROT
   veg3=POTOTO*/

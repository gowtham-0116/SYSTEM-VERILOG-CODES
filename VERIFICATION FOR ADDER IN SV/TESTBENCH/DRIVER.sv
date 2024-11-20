class driver;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
endfunction
    
    task drive;
      repeat(10)begin
        pkt=new();
        mail.get(pkt);
        vintf.a = pkt.a;
        vintf.b = pkt.b;
        
        pkt.c_out = vintf.c_out;
      end
    endtask
endclass

class monitor;
  transaction t;
  mailbox mail;
  virtual operation vintfob;
  function new(virtual operation vintfob,mailbox mail);
    this.vintfob = vintfob;
    this.mail = mail;
  endfunction
  
  task monit;
    repeat(5)
      begin
        t=new();
        mail.put(t);
        t.a=vintfob.a;
        t.b=vintfob.b;
        vintfob.c_out=t.c_out;
        $display("t is received from DUT");
        
        
      end
  endtask
endclass

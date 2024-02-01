program inherit;
  class parent;
     int x=5;
    task printf;
      $display("THIS IS PARENT CLASS");
    endtask
  endclass
  
class subclass extends parent;
    task printf;
      $display("THIS IS SUBCLASS");
    endtask
  endclass
  
  initial 
    begin
      parent p=new();
      subclass s=new();
      s.x=10;
      $display("the value of x is %0d",p.x);
      $display("the value of x is %0d",s.x);
      p.printf();
   s.printf();
    end
endprogram


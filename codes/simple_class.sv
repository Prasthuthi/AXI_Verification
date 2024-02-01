class simple;
  int i,j;
   task printf();
    begin
      $display("properties of %0d and %0d",i,j);
    end
  endtask
endclass
program simple_class;
 initial
   begin
      simple obj_1;
      simple obj_2;
      obj_1=new();
      obj_2=new();
      obj_1.i=2;
      obj_2.i=4;
      obj_1.printf();
      obj_2.printf();
    end
endprogram


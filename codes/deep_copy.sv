program deep_copy();
  class A;
    int j=5;
    function A copy_A();
      copy_A=new();
      copy_A.j=this.j;
    endfunction
  endclass
  
  class B;
    int i=1;
      A a=new();
function B copy_B();
    copy_B=new();
      copy_B.i=this.i;
      copy_B.a=a.copy_A();
    endfunction
  endclass
 
  B b1=new();
  B b2=new();
  initial
    begin
      b2=b1.copy_B();
      $display("output is %d, %d",b1.i,b1.a.j);
      $display("output is %d, %d",b2.i,b2.a.j);
      b2.i=10;
      $display("output is %d, %d",b1.i,b1.a.j);
      $display("output is %d, %d",b2.i,b2.a.j);
       b2.a.j=50;
     $display("output is %d, %d",b1.i,b1.a.j);
      $display("output is %d, %d",b2.i,b2.a.j);
      end
endprogram



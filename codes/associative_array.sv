module associative_array ();
  int as_mem[int];
  int i;
  initial begin
  as_mem[100]=101;
  as_mem[0]=100; 
as_mem[50]=99;
as_mem[256]=77;
    foreach(as_mem[i])
    begin
      $display("as_mem[%0d]=%0d",i,as_mem[i]);
    end
  $display("size of the array ",as_mem.size);
as_mem.exists(2);
    $display(" checks if index 2 exists=%d", as_mem[2]);
as_mem.exists(100);
  $display(" checks if index 100 exists=%d", as_mem[100]);
as_mem.first(i);
  $display("the value stored in first index",as_mem[i]);
as_mem.last(i);
  $display("the value stored in last index",as_mem[i]);
as_mem.delete(0);
  $display("Delete the first index=%d",as_mem[0]);
     foreach(as_mem[i])
    begin
      $display("as_mem[%0d]=%0d",i,as_mem[i]);
    end
as_mem.first(i);
  $display("the value stored in first index=%d",as_mem[1]);
   #1 $finish;
end
endmodule


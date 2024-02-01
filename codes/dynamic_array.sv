module dynamic_array();
   bit [7:0]mem[];
  
initial begin
  mem = new[4];
  $display ("Setting array size to 4");
  mem ={0,1,2,3};
  $display("Initialize the array with 0,1,2,3 values");
  foreach(mem[i])
    begin
  $display("elements are %d",mem[i]);
    end
  mem = new[8](mem);
    $display("size of the array=%d",mem.size);
     foreach(mem[i])
    begin
      $display("mem[%0d]=%0d",i,mem[i]);
    end 
  mem.delete;
   $display("size of the array=%d",mem.size);
  #1 $finish;
end
endmodule




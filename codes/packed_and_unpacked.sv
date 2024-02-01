module packed_and_unpacked();
bit [7:0]packed_array=8'hAA;
bit unpacked_array[8]='{0,0,0,0,0,0,0,1};
initial 
begin
$display("0th element of the packed_array is %0b",packed_array[0]);
$display("0th element of the unpacked_array is %0p",unpacked_array[0]);
$display("whole packed_array is %0b",packed_array);
$display("whole unpacked_array is %0p",unpacked_array);
  #1 $finish;
end
endmodule


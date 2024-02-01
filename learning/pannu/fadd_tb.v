module fadd_tb;
reg a,b,cin;
wire sum, carry;

fadd uut(a,b,cin,sum,carry);

initial begin

a=1'b1;b=1'b1;cin=1'b0;
#50 a=1'b0;b=1'b1;cin=1'b1;
end 
endmodule


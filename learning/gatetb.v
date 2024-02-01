module gatetb;
reg a,b;
wire y;

gate uut(.a(a),.b(b),.y(y));

initial begin
a=1'b1;b=1'b0;
#10 a=1'b1; b=1'b1;
end 
endmodule


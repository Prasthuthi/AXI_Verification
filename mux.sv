module mux(s,a,b,y);

input s,a,b;
output reg y;

always@(s)

begin
case(s)

1'b0:y=a;
1'b1:y=b;
default:y=x;

endcase
end
endmodule


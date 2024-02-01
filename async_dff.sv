module async_dff(clk,rst,d,q);
input clk,rst,d;
output reg q;
always@(posedge clk or negedge rst)
begin
if(!rst)
q<=0;
else 
q<=d;
end
endmodule

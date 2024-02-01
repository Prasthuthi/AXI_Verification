class base;
 int value;
function new();
    		value=3;
  	endfunction
endclass

class ext extends base;
int x;
function new();
x=5;
endfunction
endclass

program constructor1;
initial
begin
     ext e=new();
     $display("value=%0d, x=%0d",e.value,e.x);
    end
endprogram


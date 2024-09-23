module top();
bit a;
byte b;
shortint c;
int d;
longint e;
logic [3:0]x;
initial begin
  a = 0;
 // b = 15;
   b='bx1;
 // c = 30;
   c= 16'b1x; // even if you write like this there is no effect because these all are 2 state data types
  d = 40;
  e = 60;
  x = 'bx1;  // it will give xxx1 why? 4 state data type
$display("a=%b,b=%b,c=%b,d=%b,e=%b,x=%b",a,b,c,d,e,x);
  end
endmodule

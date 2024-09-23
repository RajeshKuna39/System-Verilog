module top();
int a;
real b;

initial 
  begin
    a = int'(20.0-0.6); // 19.4 ---> 19 without using int also same output
    b = real'(20-0.1);  //  19.9 -----> 19.900000  without using real also same output
    $display("a=%d,b=%f",a,b); // for real while displaying you have to use %f
   end
endmodule

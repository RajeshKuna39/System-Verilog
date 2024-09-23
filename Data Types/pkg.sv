package pkg;

int no_of_trans;

function void display(string str);
//$display("t=%0t n=%0d %s",str,$time,no_of_trans);
$display($time,",%s,n=%0d",str,no_of_trans);
endfunction

endpackage

module top();

import pkg::*;

initial begin
    #10;
   no_of_trans = 10;
   #10;
   display("FROM MODULE A");
   end
endmodule

module test();

import pkg::*;

initial 
     begin
        #1;   // if i change this delay to 5 then n=10 why? #10 from module A n=10
       no_of_trans = 20;
         #5;
         display("FROM MODULE B");
       end
endmodule


/*-------------------------------------------------------------------------------------

OUTPUT : 10,FROM MODULE B,n=20
         20,FROM MODULE A,n=10

---------------------------------------------------------------------------------------*/

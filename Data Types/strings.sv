
module top();

string str;

initial 
     begin
     str = "RAJESH";
      $display("original string=%s",str);  // RAJESH
     str = str.tolower();      
     $display("str=%s",str);  //rajesh
     str.putc(2,"m");
     $display("after performing putc %s",str); // ramesh
    
     str = str.substr(0,str.len-4);
     $display("after performing substract str=%s",str); // ram
     str = {{1{"K"}},".",str};
     $display("after concatenation str=%s",str);   // K.ram
     end
endmodule

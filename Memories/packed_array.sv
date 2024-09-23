module top();

bit [3:0][7:0]byte_packed;

initial begin
   byte_packed = 32'hABCD_1234;
   $display("first byte %0h",byte_packed[0]); // first byte
   $display("in first byte lsb bit %b",byte_packed[0][0]); // byte 0 lsb bit 
   $display("total array %h",byte_packed); // complete array
   end
endmodule

module top();

bit [3:0][7:0]a[0:2];

initial 
     begin
       a[0] = 32'hABCD_1234;
       a[1] = 32'h5678_9ABC;
       a[2] = 32'hABAB_1122;
       $display("first row 32 bits %0h",a[0]);
        $display("second row 2nd segment %0h",a[1][1]);
         $display("third row 4th segment 6th bit %0b",a[2][3][5]);
      end
endmodule

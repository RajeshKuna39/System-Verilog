module top();

logic [7:0]array[4];

initial 
   begin
      foreach(array[i])
         begin
            array[i] = i;
           $display("elements in an array %b",array[i]);
       //     $display("array[i] =%0b",array[i]);
          end
   end
endmodule

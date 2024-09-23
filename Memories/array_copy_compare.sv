module top();

bit [3:0]a[4] = '{1,2,3,4};
bit [3:0]b[4] ='{5,6,7,8};

initial 
    begin
      if(a==b)
        begin
           $display("BEFORE COPYING BOTH ARE EQUAL");
           end
       else 
           begin
            $display("BEFORE COPYING BOTH ARE NOT EQUAL");
            end
        b = a;
        if(a==b)
          $display("AFTER COPYING BOTH ARE EQUAL");
         else
         $display("AFTER COPYING BOTH ARE NOT EQUAL");
        end
endmodule



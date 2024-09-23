module top();

typedef enum{a,b,c,d}state;
state s1,s2;
int x;

initial 
   begin
     s1 = a;
     $display("s1=%p",s1);
      x = a;
      $display("x=%0d",x);
     s1 = state'(5);// wont give error-----> static casting
      $display("s1=%0d",s1);
      $cast(s1,3);   // as a task-----way1
    //  $display("s1=%d",s1);
       if($cast(s1,4))  // as a system function out of bound----> FAILED-------->way2
         $display("CASTING SUCCESSFUL");
        else
          $display("CASTING FAILED");
    end
endmodule

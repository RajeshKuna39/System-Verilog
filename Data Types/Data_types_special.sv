module Data_types_special;

//enum {initi,read,write,brd,bwr} fsm_state; // syntax for enum data type

//fsm_state  = initi;

//fsm_state = read;


//typedef bit [31:0] word; // typedef syntax it is userdefine datatype word is a data_type now.


typedef enum {initi,read,wr,brd,bwr} fsm_state;

fsm_state present_state , next_state;

fsm_state state = state.first();

initial begin
forever begin
$display(" %s : %d",state.name,state);

if(state == state.last())
 break;
state = state.next();
end
end

endmodule






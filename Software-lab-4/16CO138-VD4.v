 

               //data-flow level modeling for designing a ckt diagram from given counter state diagram

module states(input x, clk,input [1:0] current_state,output [1:0] next_state);
           //x-input 
           //current_state is the input which represents the initial or previous state of states
           //clk-input clock
          
          wire t1,t2;

          assign t1= (current_state[1]^x) | ( current_state[0] & current_state[1]);
          assign t2= ~(current_state[0]^x) | ( ~current_state[0] & current_state[1]);

          tff T1(t1, current_state[1], clk, next_state[1]);
          tff T2(t2, current_state[0], clk, next_state[0]);

endmodule

//T Flip Flop
module tff (input t,p,clk,output q);
             //t-input
             //p-previous state
            //clk-input clock
            //q-output from T Flip Flop

assign q= (p^t) & clk | p & (~clk); 
endmodule  


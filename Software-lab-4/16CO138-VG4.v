               //gate level modeling for drawing a ckt from a given counter state diagram


module states(input x, clk,input [1:0] current_state,output [1:0] next_state);
      
     wire t1,t2;
     wire a,b,d,e;

     xor(a,current_state[1],x);
     and(b,current_state[0], current_state[1]);
     or(t1,a,b);

    not(g,current_state[0]);
    xnor(d,current_state[0],x);
    and(e, g,current_state[1]);
    or(t2,e,d);

    tff T1(t1, current_state[1], clk, next_state[1]);
    tff T2(t2, current_state[0], clk, next_state[0]);
endmodule


//T Flip Flop
module tff (input t,p,clk,output q);
    

     wire i,j,k,l,m; 
     xor(i, p,t);    
     and(j,i,clk);  
     not(k,clk);
     and(l,p,k);
     or(q,l,j);

endmodule  


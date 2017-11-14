//gate modelling for PISO register

module mux(op,i0,i1,s);
  input i0,i1,s;
  output  op;
  wire snot,op1,op2;
  not(snot,s);
  and(op1,snot,i0);
  and(op2,s,i1);
  or(op,op1,op2);
endmodule

module dff(q,d,clk);
  input d,clk;
  output reg q;
  always @(posedge clk)
    q<=d;
endmodule

module piso(q,ip,i0,s,clk);
  output q;
  input i0,s,clk;
  input [3:0]ip;
  wire d3,d2,d1,d0,q3,q2,q1,q0;


  mux m1(d3,i0,ip[3],s);
  dff e1(q3,d3,clk);
  mux m2(d2,q3,ip[2],s);
  dff e2(q2,d2,clk);
  mux m3(d1,q2,ip[1],s);
  dff e3(q1,d1,clk);
  mux m4(d0,q1,ip[0],s);
  dff e4(q,d0,clk);
endmodule

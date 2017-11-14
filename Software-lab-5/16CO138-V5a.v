// testbench for gate and dataflow modelling for PISO register

module test;
reg i0,s,clk;
reg[3:0]ip;
wire q;

 piso test (q,ip,i0,s,clk);
initial begin
  $dumpfile("16CO138-V5.vcd");
  $dumpvars(0,test);
  clk=1'b0;
  s=1'b1;
  i0=1'b0;
  ip=4'b1101;
   $display("input=%4b",ip);
  #5 clk=1'b1;s=1'b0;
  $display("clk=%b output bit=%b",clk,q);
  #5 clk=1'b0;s=1'b0;
  #5 clk=1'b1;s=1'b0;
  $display("clk=%b output bit=%b",clk,q);
  #5 clk=1'b0;s=1'b0;
  #5 clk=1'b1;s=1'b0;
  $display("clk=%b output bit=%b",clk,q);
  #5 clk=1'b0;s=1'b0;
  #5 clk=1'b1;s=1'b0;
  $display("clk=%b output bit=%b",clk,q);
  #5 clk=1'b0;s=1'b0;
  #5 clk=1'b1;s=1'b0;
  $display("clk=%b output bit=%b",clk,q);
  #5 clk=1'b0;s=1'b0;
  #5 clk=1'b1;s=1'b0;
  $display("clk=%b output bit=%b",clk,q);
  
  

end
  
endmodule

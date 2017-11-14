         //test-bench for a drawing ckt diagram from a given state diagram


`timescale 1ns/100ps

module test;
   reg x,clk;
   reg [1:0] current_state;
   wire [1:0] next_state;

  states new(x, clk,current_state,next_state);

  initial
  begin

  $dumpfile("16CO138-V4.vcd");
  $dumpvars(0,test);

  $monitor(" clk= %b    x= %b   Current state= %b     =>     Next state= %b \n", clk,x,current_state, next_state);
  #10 clk=0; x=0; current_state=2'b00;
  #10 clk=0; x=0; current_state=2'b00;
  #10 clk=1; x=0; current_state=2'b00;
  #10 clk=0; x=0; current_state=2'b01;
  #10 clk=1; x=0; current_state=2'b01;
  #10 clk=0; x=0; current_state=2'b10;
  #10 clk=1; x=0; current_state=2'b10;
  #10 clk=0; x=0; current_state=2'b11;
  #10 clk=1; x=0; current_state=2'b11;
  #10 clk=0; x=1; current_state=2'b00;
  #10 clk=1; x=1; current_state=2'b00;
  #10 clk=0; x=1; current_state=2'b01;
  #10 clk=1; x=1; current_state=2'b01;
  #10 clk=0; x=1; current_state=2'b10;
  #10 clk=1; x=1; current_state=2'b10;
  #10 clk=0; x=1; current_state=2'b11;
  #10 clk=1; x=1; current_state=2'b11;
   
  end
endmodule

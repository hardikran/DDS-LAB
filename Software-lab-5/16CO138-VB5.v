//behavioral modelling for PISO register

module piso(q,ip);
  output reg q;
  input clk,s;
  input wire [3:0]ip;

  always @(posedge clk or ip)
  begin

  q=ip[0];
  end

endmodule

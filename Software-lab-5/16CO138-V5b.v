//testbench for behavioral modelling of PISO register

module test;
reg clk;
reg[3:0]ip;
wire q;

piso test(q,ip);
initial begin
  $dumpfile("16CO138-V5.vcd");
  $dumpvars(0,test);
 
    ip=4'b1101;
    $display("input=%4b",ip);
	clk=1'b0;
	#10 begin clk=~clk;
	ip=4'b0110;
	end
	#10  begin clk=~clk;
	ip=4'b0011;
	end
	#10 begin clk=~clk;
	ip=4'b0001;
	end
	#10 begin clk=~clk;
	ip=4'b0000;
	end

end
  initial begin
$monitor("time=%g clock=%b output bit=%b",$time,clk,q);
end
endmodule

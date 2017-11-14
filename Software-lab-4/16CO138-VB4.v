  

                 //behavioral level modeling for drawing a ckt from a given counter state diagram


module states(input x, clk,input [1:0] current_state,output reg [1:0] next_state); 
               

    always @ (posedge clk)
    begin
    case ({x,current_state})
	  3'b000: next_state <= 2'b01;
	  3'b001: next_state <= 2'b01;
	  3'b010: next_state <= 2'b01;
	  3'b011: next_state <= 2'b01;
	  3'b100: next_state <= 2'b10;
	  3'b101: next_state <= 2'b10;
	  3'b110: next_state <= 2'b11;
	  3'b111: next_state <= 2'b00;
    endcase 
    end
endmodule		


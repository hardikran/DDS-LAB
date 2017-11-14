//DATAFLOW

module complement(a,b,c,d,w,x,y,z);
   
    input a,b,c,d;
	output w,x,y,z;
	wire w1,w2,w3,w4;
	
	assign z=~d;
	assign y=c;
	assign w=~(a|b|c);
	assign w1=~a;
	assign w2=b^c;
	assign x=w1 & w2;
	
endmodule
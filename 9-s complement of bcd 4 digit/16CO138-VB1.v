//BAHAVIORAL

module complement(a,b,c,d,w,x,y,z);
 
     input a,b,c,d;
	 output reg w,x,y,z;
	 
 always@(a,b,c,d)
 begin
       assign w=(~a)&(~b)&(~c);
	   assign z=~d;
	   assign y=c;
	   assign x=(~a) & (b^c);
 end
 endmodule
	   
module full_adder(A,B,C,Carry,Sum);
input A,B,C;
output Carry,Sum;


wire x,y,z;



xor(z,A,B);
and(y,z,C);
and(x,A,B);

or(Carry,y,x);


xor(Sum,A,B,C);

endmodule

module Test;
reg a,b,c;
wire carry,sum;

full_adder fa(a,b,c,carry,sum);
initial begin
	$dumpfile("full_adder.vcd");
	$dumpvars(0,Test);
	$display("A B C Carry Sum");
	$monitor("%b %b %b \t %b   %b", a,b,c,carry,sum);
	a=0;b=0;c=0;
	#10 a=0;b=0;c=1;
	#10 a=0;b=1;c=0;
	#10 a=0;b=1;c=1;
	#10 a=1;b=0;c=0;
	#10 a=1;b=0;c=1;
	#10 a=1;b=1;c=0;
	#10 a=1;b=1;c=1;
	#10
	$finish;
	end
	endmodule



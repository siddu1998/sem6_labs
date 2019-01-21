module half_adder_program(A,B,Carry,Sum);
input A,B;
output Carry,Sum;

assign Carry=A&B;
assign Sum=A^B;

endmodule

module Test;
reg a,b;
wire carry,sum;

half_adder_program hf(a,b,carry,sum);
initial begin
	$dumpfile("half_adder.vcd");
	$dumpvars(0,Test);
	$display("A B Carry Sum");
	$monitor("%b %b %b %b", a,b,carry,sum);
	a=0;b=0;
	#10 a=0;b=1;
	#10 a=1;b=0;
	#10 a=1;b=1;
	#10
	$finish;
	end
	endmodule

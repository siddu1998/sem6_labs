module half_subtractor_program(A,B,Difference,Borrow);
input A,B;
output Difference,Borrow;

assign Difference=A^B;
assign Borrow=(~A)&B;

endmodule

module Test;
reg a,b;
wire carry,sum;

half_subtractor_program hf(a,b,difference,borrow);
initial begin
	$dumpfile("half_subtractor.vcd");
	$dumpvars(0,Test);
	$display("A B Difference Borrow");
	$monitor("%b %b %b %b", a,b,difference,borrow);
	a=0;b=0;
	#10 a=0;b=1;
	#10 a=1;b=0;
	#10 a=1;b=1;
	#10
	$finish;
	end
	endmodule

module full_subtractor(A,B,C,Difference,Borrow);
input A,B,C;
output Difference,Borrow;


wire x,y,z,w,p,q,r;





xor(Difference,A,B,C);



and(p,~A,C);
and(q,~A,B);
and(r,B,C);

or(Borrow,p,q,r);




endmodule

module Test;
reg a,b,c;
wire difference,borrow;

full_subtractor fa(a,b,c,difference,borrow);
initial begin
	$dumpfile("full_subtractor.vcd");
	$dumpvars(0,Test);
	$display("A B C difference borrow");
	$monitor("%b %b %b \t %b   %b", a,b,c,difference,borrow);
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



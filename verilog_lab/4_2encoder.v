module encoder(input [3:0]in,output [1:0]out);
reg [1:0]out;
always@(*) begin
case(in)
4'b0001:
	out =2'b00;
4'b0010:
	out =2'b01;
4'b0100:
	out =2'b10;
4'b1000:
	out =2'b11;
endcase
end
endmodule

module Test;
reg [3:0]in;
wire [1:0]out;

encoder enc(in,out);
initial begin
	$dumpfile("encoder.vcd");
	$dumpvars(0,Test);
	$display("in \t out");
	$monitor("%b  \t %b ",in,out);
	
	in=4'b0001;
	#10 in=4'b0010;
	#10 in=4'b0100;
	#10 in=4'b1000;
	#10 


	$finish;
	end
	endmodule



module decoder(input [2:0]in,output [7:0]out);
reg [7:0]out;
always@(*) begin
case(in)
3'b000: out=8'b00000001;
3'b001: out=8'b00000010;
3'b010: out=8'b00000100;
3'b011: out=8'b00001000;
3'b100: out=8'b00010000;
3'b101: out=8'b00100000;
3'b110: out=8'b01000000;
3'b111: out=8'b10000000;
endcase
end
endmodule

module Test;
reg [2:0]in;
wire [7:0]out;

decoder enc(in,out);
initial begin
	$dumpfile("decoder.vcd");
	$dumpvars(0,Test);
	$display("in \t out");
	$monitor("%b  \t %b ",in,out);
	
	in=3'b000;
	#10 in=3'b001;
	#10 in=3'b010;
	#10 in=3'b011;
	#10 


	$finish;
	end
	endmodule



module orgate(
	input a,
	input b,
	output orgate_output
);
	assign orgate_output = a | b ;
endmodule

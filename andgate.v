//AND gate using the dataflow model in verilog//
module andgate(
	input a,
	input b,
	output and_output
);
	assign and_output = a & b ;
endmodule

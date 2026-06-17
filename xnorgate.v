module xnorgate(
	input a,
	input b,
	output op
);
	assign op=~(a^b);
endmodule

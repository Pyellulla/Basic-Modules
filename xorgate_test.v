module xorgate_test;
	reg a,b;
	wire c;
	xorgate dut(.a(a),.b(b),.xorgate_output(xorgate_output));
	initial begin
		$dumpfile("test_xorgate.vcd");
		$dumpvars(0,xorgate_test);
		$display("This is a basic xorgate");
		$monitor("a=%b,b=%b,xorgate_output=%b",a,b,xorgate_output);
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		$finish;
	end
endmodule

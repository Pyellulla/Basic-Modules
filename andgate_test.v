module andgate_test;
	reg a,b;
	wire c;
	andgate dut(.a(a),.b(b),.and_output(and_output));
	initial begin
		$dumpfile("test_andgate.vcd");
		$dumpvars(0,andgate_test);
		$display("This is a Basic And gate");
		$monitor("a=%b,b=%b,and_output=%b",a,b,and_output);
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		$finish;
	end
endmodule

module orgate_test;
	reg a,b;
	wire c;
	orgate dut(.a(a),.b(b),.orgate_output(orgate_output));
	initial begin
	$dumpfile("test_orgate.vcd");
	$dumpvars(0,orgate_test);
	$display("This is a basic or gate");
	$monitor("a=%b,b=%b,orgate_output=%b",a,b,orgate_output);
		a=0;b=0;
		#5;
		a=0;b=1;
		#5;
		a=1;b=0;
		#5;
		a=1;b=1;
		#5;
		$finish;
	end
endmodule

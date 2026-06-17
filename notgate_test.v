module notgate_test;
	reg a;
	wire b;
	notgate dut(.a(a),.b(b));
	initial begin
		$dumpfile("test_notgate.vcd");
		$dumpvars(0,notgate_test);
		$display("This a basic Not gate");
		$monitor("a=%b,b=%b",a,b);
		a=0;#10;
		a=1;#10;
		$finish;
	end
endmodule

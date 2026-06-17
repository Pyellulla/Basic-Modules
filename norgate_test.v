module norgate_test;
	reg a,b;
	wire c;
	norgate dut(.a(a),.b(b),.y(y));
	initial begin
		$dumpfile("test_norgate.vcd");
		$dumpvars(0,norgate_test);
		$display("this is a basic nor gate");
		$monitor("a=%b,b=%b,y=%b",a,b,y);
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		$finish;
	end 
endmodule

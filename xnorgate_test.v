module xnorgate_test;
	reg a,b;
	wire c;
	xnorgate dut(.a(a),.b(b),.op(op));
	initial begin 
		$dumpfile("test_xnorgate.vcd");
		$dumpvars(0,xnorgate_test);
		$display("this is a basic xnorgate");
		$monitor("a=%b,b=%b,op=%b",a,b,op);
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		$finish;
	end
endmodule

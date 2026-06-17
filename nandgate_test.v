module nandgate_tb;
	reg a,b;
	wire out;
	nandgate dut(.a(a),.b(b),.out(out));
	initial begin 
		$dumpfile("test_nandgate.vcd");
		$dumpvars(0,nandgate_tb);
		$display("this is a basic nand gate");
		$monitor("a=%b,b=%b,out=%b",a,b,out);
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		$finish;
	end
endmodule

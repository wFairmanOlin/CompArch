`include "hw1.v"
module notAandnotB_test ();

	
	reg A, B;
	wire nA, nB, nAandnB;

	notAandnotB dut(A, B, nA, nB, nAandnB);


	initial begin
		$display("A B | ~A ~B | ~A~B");
		A=0;B=0; #1
		$display("%b %b |  %b  %b |    %b", A,B, nA, nB, nAandnB);
		A=0;B=1; #1
		$display("%b %b |  %b  %b |    %b", A,B, nA, nB, nAandnB);
		A=1;B=0; #1
		$display("%b %b |  %b  %b |    %b", A,B, nA, nB, nAandnB);
		A=1;B=1; #1
		$display("%b %b |  %b  %b |    %b", A,B, nA, nB, nAandnB);
	end
endmodule


//module notAandB_test ();

//	
//	reg A, B;
//	wire AandB, nAandB;

//	notAandB dut(A, B, AandB, nAandB);


//	initial begin
//		$display("A B | AB | ~(AB)");
//		A=0;B=0; #1
//		$display("%b %b |  %b |    %b", A,B, AandB, nAandB);
//		A=0;B=1; #1
//		$display("%b %b |  %b |    %b", A,B, AandB, nAandB);
//		A=1;B=0; #1
//		$display("%b %b |  %b |    %b", A,B, AandB, nAandB);
//		A=1;B=1; #1
//		$display("%b %b |  %b |    %b", A,B, AandB, nAandB);
//	end
//endmodule


//module notAornotB_test ();

//	
//	reg A, B;
//	wire nA, nB,nAornB;

//	notAornotB dut(A, B, nA, nB, nAornB);


//	initial begin
//		$display("A B | ~A ~B | ~A+~B");
//		A=0;B=0; #1
//		$display("%b %b |  %b %b  |     %b", A,B, nA, nB, nAornB);
//		A=0;B=1; #1
//		$display("%b %b |  %b %b  |     %b", A,B, nA, nB, nAornB);
//		A=1;B=0; #1
//		$display("%b %b |  %b %b  |     %b", A,B, nA, nB, nAornB);
//		A=1;B=1; #1
//		$display("%b %b |  %b %b  |     %b", A,B, nA, nB, nAornB);
//	end
//endmodule


//module notAorB_test ();

//	
//	reg A, B;
//	wire AorB, nAorB;

//	notAorB dut(A, B, AorB, nAorB);


//	initial begin
//		$display("A B | A+B | ~(A+B)");
//		A=0;B=0; #1
//		$display("%b %b |  %b  |     %b", A,B, AorB, nAorB);
//		A=0;B=1; #1
//		$display("%b %b |  %b  |     %b", A,B, AorB, nAorB);
//		A=1;B=0; #1
//		$display("%b %b |  %b  |     %b", A,B, AorB, nAorB);
//		A=1;B=1; #1
//		$display("%b %b |  %b  |     %b", A,B, AorB, nAorB);
//	end
//endmodule

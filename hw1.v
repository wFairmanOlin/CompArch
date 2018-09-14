module notAandnotB
(
	input A,
	input B,
	output nA,
	output nB,
	output nAandnB
);

	wire nA;
	wire nB;
	not Ainv(nA, A);
	not Binv(nB, B);
	and andgate(nAandnB, nA, nB);

endmodule


module notAandB
(
	input A,
	input B,
	output AandB,
	output nAandB
);

	wire AandB;
	and andgate(AandB, A, B);
	not AandBinv(nAandB, AandB);
endmodule


module notAornotB
(
	input A,
	input B,
	output nA,
	output nB,
	output nAorB
);
	wire nA;
	wire nB;
	not Ainv(nA, A);
	not Binv(nB, B);
	or  orgate(nAorB, nA, nB);
endmodule


module notAorB
(
	input A,
	input B,
	output AorB,
	output nAorB
);
	wire AorB;
	or  orgate(AorB, A, B);
	not AorBinv(nAorB, AorB);
endmodule



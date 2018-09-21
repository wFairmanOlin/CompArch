//define gates with delays
`define AND and #50
`define OR or #50
`define NOT not #50
`define NOR nor #50
`define NAND nand #50
`define XOR xor #50

module behavioralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
    // Your adder code here
    wire aAndb;
    wire aAndc;
    wire bAndc;

    `AND ab(aAndb, a, b);
    `AND ac(aAndc, a, carryin);
    `AND bc(bAndc, b, carryin);

    `XOR s(sum, a, b, carryin);
    `OR  co(carryout, aAndb, aAndc, bAndc);

endmodule

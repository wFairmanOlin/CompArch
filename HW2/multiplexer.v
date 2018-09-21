//define gates with delays
`define AND and #50
`define OR or #50
`define NOT not #50
`define NOR nor #50
`define NAND nand #50
`define XOR xor #50
// Multiplexer circuit

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Your multiplexer code here
    wire nA0;
    wire nA1;
    wire out0;
    wire out1;
    wire out2;
    wire out3;

    `NOT notA0(nA0, address0);
    `NOT notA1(nA1, address1);

    `AND out3(out3, in3, address0, address1);
    `AND out2(out2, in2, nA0, address1);
    `AND out1(out1, in1, address0, nA1);
    `AND out0(out0, in0, nA0, nA1);

    `OR outAll(out, out0, out1, out2, out3);
endmodule

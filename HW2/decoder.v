//define gates with delays
`define AND and #50
`define OR or #50
`define NOT not #50
`define NOR nor #50
`define NAND nand #50
`define XOR xor #50
// Decoder circuit

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Your decoder code here
    wire address0norAddress1;
    wire address0andAddress1;
    wire nAddress0andAddress1;
    wire address0andnAddress1;

    wire nAddress1;
    wire nAddress0;

    `NOT notA1(nAddress1, address1);
    `NOT notA0(nAddress0, address0);
    `NOR nor0(address0norAddress1, address0, address1);
    `AND and1(address0andnAddress1, address0, nAddress1);
    `AND and2(nAddress0andAddress1, nAddress0, address1);
    `AND and3(address0andAddress1, address0, address1);

    `AND enable0(out0, enable, address0norAddress1);
    `AND enable1(out1, enable, address0andnAddress1);
    `AND enable2(out2, enable, nAddress0andAddress1);
    `AND enable3(out3, enable, address0andAddress1);
endmodule

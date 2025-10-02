module adder(
    input A, B, //Binary A and B input
    output Y,   //Result output
    output Cout //Result carryout
);

    assign Y = A^B;
    assign Cout = A&B;

endmodule
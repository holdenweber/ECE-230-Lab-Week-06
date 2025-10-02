module light(
    input A,B,  //Downstairs and Upstairs Light Switch
    output Y    //Result of light
);

    assign Y = A^B;

endmodule
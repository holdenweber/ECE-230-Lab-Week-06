module full_adder(
    input LSB_A, MSB_A, //LSB and MSB for A
    input LSB_B, MSB_B, //LSB and MSB for B
    output lsbY, msbY,  //Result output
    output Cout //Result carryout
);

wire Cin;
adder lsbadder(
    .A(LSB_A),
    .B(LSB_B),
    .Y(lsbY),   //Set LSB Result
    .Cout(Cin)  //Use the LSB carry-out as the MSB's carry-in
);

//Assign remaining LEDs
assign msbY = MSB_A ^ MSB_B ^ Cin;
assign Cout = MSB_B&Cin | MSB_A&MSB_B | MSB_A&Cin;

endmodule
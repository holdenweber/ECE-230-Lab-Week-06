// Implement top level module
module top(
    input[0:7] sw,
        //0: Downstairs Light Switch
        //1: Upstairs Light Switch
        //2: "A" for one bit adder
        //3: "B" for one bit adder
        //4: LSB of "A" for two bit adder
        //5: MSB of "A" for two bit adder
        //6: LSB of "B" for two bit adder
        //7: MSB of "B" for two bit adder
    output[0:5] led
        //0: Stairway light
        //1: Y (sum output) of one-bit adder
        //2: Carry out of one bit adder
        //3: LSB of two bit sum
        //4: MSB of two bit sum
        //5: Carry out of MSB adder
);

    //Stairway Lights
    wire lightbulb;
    light inst1(
        .A(sw[0]),
        .B(sw[1]),
        .Y(lightbulb)
    );
    //Assign LED
    assign led[0] = lightbulb;
    
    //Adder
    wire adderY;
    wire adderCout;
    adder inst2(
        .A(sw[2]),
        .B(sw[3]),
        .Y(adderY),
        .Cout(adderCout)
    );
    //Assign LEDs
    assign led[1] = adderY;
    assign led[2] = adderCout;
    
    //Full Adder
    wire fullAdderLSB;
    wire fullAdderMSB;
    wire fullAdderCout;
    full_adder inst3(
        .LSB_A(sw[4]),
        .MSB_A(sw[5]),
        .LSB_B(sw[6]),
        .MSB_B(sw[7]),
        .lsbY(fullAdderLSB),
        .msbY(fullAdderMSB),
        .Cout(fullAdderCout)
    );
    //Assign LEDs
    assign led[3] = fullAdderLSB;
    assign led[4] = fullAdderMSB;
    assign led[5] = fullAdderCout;

endmodule
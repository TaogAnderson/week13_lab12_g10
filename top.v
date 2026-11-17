module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines
    one_hot one_hot_inst (
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .StateOut(led[6:2])
    );
    
    binary binary_inst (
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .StateOut(led[9:7])
    ); 

endmodule
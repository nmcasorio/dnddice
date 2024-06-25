/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_tt_um_dice_roller (
    input wire clk,
    input wire reset,
    input wire [7:0] dip_switch, // 8-bit DIP switch input
    output wire [6:0] seg,  // Seven segment output
    output wire [3:0] an    // Anode control for 4 digits
);

  // All output pins must be assigned. If not used, assign to 0.
    output wire [6:0] seg,  // Seven segment output
    output wire [3:0] an    // Anode control for 4 digits

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};
    
tt_um_dice_roller
    .clk(clk),
    .reset(rst_n),
    .random_number(random_number),
    .seg(seg),
    .an(an)
endmodule

module tt_um_seven_segment_display (
    input wire clk,
    input wire reset,
    input wire [5:0] random_number
);

  // All output pins must be assigned. If not used, assign to 0.
    output reg [6:0] seg,  // Seven segment output
    output reg [3:0] an    // Anode control for 4 digits

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};
    
tt_um_seven_segment_display
    .clk(clk),
    .reset(reset),
    .random_number(random_number),
    .seg(seg),
    .an(an)
endmodule

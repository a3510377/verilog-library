// seven segment display, Show in rotation
// +-a-+
// f   b    0b  0|0|0|0|0|0|0|0
// +-g-+    -- dp|g|f|e|d|c|b|a
// e   c
// +-d-+ dp
// ---------------------------------------------------------------------------
// 0 [0x3f] => a | b | c | d | e | f     5 [0x6d] => a | c | d | f | g
// 1 [0x06] => b | c                     6 [0x7c] => c | d | e | f | g
// 2 [0x5b] => a | b | d | e | g         7 [0x07] => a | b | c
// 3 [0x4f] => a | b | c | d | g         8 [0x7f] => a | b | c | d | e | f | g
// 4 [0x66] => b | c | f | g             9 [0x6f] => a | b | c | d | f | g
// ---------------------------------------------------------------------------

module show_in_rotation(input clk, output reg [7:0] out);
  reg [3:0] count;

  always @(posedge clk) begin
    case(count)
      4'b0000: out <= 8'h3f;  // 0
      4'b0001: out <= 8'h06;  // 1
      4'b0010: out <= 8'h5b;  // 2
      4'b0011: out <= 8'h4f;  // 3
      4'b0100: out <= 8'h66;  // 4
      4'b0101: out <= 8'h6d;  // 5
      4'b0110: out <= 8'h7c;  // 6
      4'b0111: out <= 8'h07;  // 7
      4'b1000: out <= 8'h7f;  // 8
      4'b1001: out <= 8'h6f;  // 9
    endcase
    count <= count + 1;
  end
endmodule

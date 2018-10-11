////////////////////////////////////////////////////////////////////////////////////
// 'chars.v' adapted from:
//
// https://github.com/shirriff/vga-fpga-fizzbuzz/blob/master/src/chars.v
// https://github.com/milanvidakovic/FPGAComputer/blob/master/chars.v
//
// Character generator holding 8x8 character images
// Input char is an 8-bit ASCII character code
// Input rownum is the desired row of the pixel image
// Output pixels is the 8 pixel row, pixels[7] is leftmost
// Original font from https://github.com/dhepper/font8x8/blob/master/font8x8_basic.h

module chars(
    input [7:0] char,
    input [2:0] rownum,
    output reg [7:0] pixels
);

always @(*)
  case ({char, rownum})

    11'b00110000000: pixels = 8'b01111100; //  XXXXX
    11'b00110000001: pixels = 8'b11000110; // XX   XX
    11'b00110000010: pixels = 8'b11001110; // XX  XXX
    11'b00110000011: pixels = 8'b11011110; // XX XXXX
    11'b00110000100: pixels = 8'b11110110; // XXXX XX
    11'b00110000101: pixels = 8'b11100110; // XXX  XX
    11'b00110000110: pixels = 8'b01111100; //  XXXXX
    11'b00110000111: pixels = 8'b00000000; //

    11'b00110001000: pixels = 8'b00110000; //   XX
    11'b00110001001: pixels = 8'b01110000; //  XXX
    11'b00110001010: pixels = 8'b00110000; //   XX
    11'b00110001011: pixels = 8'b00110000; //   XX
    11'b00110001100: pixels = 8'b00110000; //   XX
    11'b00110001101: pixels = 8'b00110000; //   XX
    11'b00110001110: pixels = 8'b11111100; // XXXXXX
    11'b00110001111: pixels = 8'b00000000; //

    11'b00110010000: pixels = 8'b01111000; //  XXXX
    11'b00110010001: pixels = 8'b11001100; // XX  XX
    11'b00110010010: pixels = 8'b00001100; //     XX
    11'b00110010011: pixels = 8'b00111000; //   XXX
    11'b00110010100: pixels = 8'b01100000; //  XX
    11'b00110010101: pixels = 8'b11001100; // XX  XX
    11'b00110010110: pixels = 8'b11111100; // XXXXXX
    11'b00110010111: pixels = 8'b00000000; //

    11'b00110011000: pixels = 8'b01111000; //  XXXX
    11'b00110011001: pixels = 8'b11001100; // XX  XX
    11'b00110011010: pixels = 8'b00001100; //     XX
    11'b00110011011: pixels = 8'b00111000; //   XXX
    11'b00110011100: pixels = 8'b00001100; //     XX
    11'b00110011101: pixels = 8'b11001100; // XX  XX
    11'b00110011110: pixels = 8'b01111000; //  XXXX
    11'b00110011111: pixels = 8'b00000000; //

    11'b00110100000: pixels = 8'b00011100; //    XXX
    11'b00110100001: pixels = 8'b00111100; //   XXXX
    11'b00110100010: pixels = 8'b01101100; //  XX XX
    11'b00110100011: pixels = 8'b11001100; // XX  XX
    11'b00110100100: pixels = 8'b11111110; // XXXXXXX
    11'b00110100101: pixels = 8'b00001100; //     XX
    11'b00110100110: pixels = 8'b00011110; //    XXXX
    11'b00110100111: pixels = 8'b00000000; //

    11'b00110101000: pixels = 8'b11111100; // XXXXXX
    11'b00110101001: pixels = 8'b11000000; // XX
    11'b00110101010: pixels = 8'b11111000; // XXXXX
    11'b00110101011: pixels = 8'b00001100; //     XX
    11'b00110101100: pixels = 8'b00001100; //     XX
    11'b00110101101: pixels = 8'b11001100; // XX  XX
    11'b00110101110: pixels = 8'b01111000; //  XXXX
    11'b00110101111: pixels = 8'b00000000; //

    11'b00110110000: pixels = 8'b00111000; //   XXX
    11'b00110110001: pixels = 8'b01100000; //  XX
    11'b00110110010: pixels = 8'b11000000; // XX
    11'b00110110011: pixels = 8'b11111000; // XXXXX
    11'b00110110100: pixels = 8'b11001100; // XX  XX
    11'b00110110101: pixels = 8'b11001100; // XX  XX
    11'b00110110110: pixels = 8'b01111000; //  XXXX
    11'b00110110111: pixels = 8'b00000000; //

    11'b00110111000: pixels = 8'b11111100; // XXXXXX
    11'b00110111001: pixels = 8'b11001100; // XX  XX
    11'b00110111010: pixels = 8'b00001100; //     XX
    11'b00110111011: pixels = 8'b00011000; //    XX
    11'b00110111100: pixels = 8'b00110000; //   XX
    11'b00110111101: pixels = 8'b00110000; //   XX
    11'b00110111110: pixels = 8'b00110000; //   XX
    11'b00110111111: pixels = 8'b00000000; //

    11'b00111000000: pixels = 8'b01111000; //  XXXX
    11'b00111000001: pixels = 8'b11001100; // XX  XX
    11'b00111000010: pixels = 8'b11001100; // XX  XX
    11'b00111000011: pixels = 8'b01111000; //  XXXX
    11'b00111000100: pixels = 8'b11001100; // XX  XX
    11'b00111000101: pixels = 8'b11001100; // XX  XX
    11'b00111000110: pixels = 8'b01111000; //  XXXX
    11'b00111000111: pixels = 8'b00000000; //

    11'b00111001000: pixels = 8'b01111000; //  XXXX
    11'b00111001001: pixels = 8'b11001100; // XX  XX
    11'b00111001010: pixels = 8'b11001100; // XX  XX
    11'b00111001011: pixels = 8'b01111100; //  XXXXX
    11'b00111001100: pixels = 8'b00001100; //     XX
    11'b00111001101: pixels = 8'b00011000; //    XX
    11'b00111001110: pixels = 8'b01110000; //  XXX
    11'b00111001111: pixels = 8'b00000000; //

    11'b01000001000: pixels = 8'b00110000; //   XX
    11'b01000001001: pixels = 8'b01111000; //  XXXX
    11'b01000001010: pixels = 8'b11001100; // XX  XX
    11'b01000001011: pixels = 8'b11001100; // XX  XX
    11'b01000001100: pixels = 8'b11111100; // XXXXXX
    11'b01000001101: pixels = 8'b11001100; // XX  XX
    11'b01000001110: pixels = 8'b11001100; // XX  XX
    11'b01000001111: pixels = 8'b00000000; //

    11'b01010011000: pixels = 8'b01111000; //  XXXX
    11'b01010011001: pixels = 8'b11001100; // XX  XX
    11'b01010011010: pixels = 8'b11100000; // XXX
    11'b01010011011: pixels = 8'b01110000; //  XXX
    11'b01010011100: pixels = 8'b00011100; //    XXX
    11'b01010011101: pixels = 8'b11001100; // XX  XX
    11'b01010011110: pixels = 8'b01111000; //  XXXX
    11'b01010011111: pixels = 8'b00000000; //

    11'b01000100000: pixels = 8'b11111000; // XXXXX
    11'b01000100001: pixels = 8'b01101100; //  XX XX
    11'b01000100010: pixels = 8'b01100110; //  XX  XX
    11'b01000100011: pixels = 8'b01100110; //  XX  XX
    11'b01000100100: pixels = 8'b01100110; //  XX  XX
    11'b01000100101: pixels = 8'b01101100; //  XX XX
    11'b01000100110: pixels = 8'b11111000; // XXXXX
    11'b01000100111: pixels = 8'b00000000; //

    11'b01000110000: pixels = 8'b11111110; // XXXXXXX
    11'b01000110001: pixels = 8'b01100010; //  XX   X
    11'b01000110010: pixels = 8'b01101000; //  XX X
    11'b01000110011: pixels = 8'b01111000; //  XXXX
    11'b01000110100: pixels = 8'b01101000; //  XX X
    11'b01000110101: pixels = 8'b01100000; //  XX
    11'b01000110110: pixels = 8'b11110000; // XXXX
    11'b01000110111: pixels = 8'b00000000; //

    11'b01000111000: pixels = 8'b00111100; //   XXXX
    11'b01000111001: pixels = 8'b01100110; //  XX  XX
    11'b01000111010: pixels = 8'b11000000; // XX
    11'b01000111011: pixels = 8'b11000000; // XX
    11'b01000111100: pixels = 8'b11001110; // XX  XXX
    11'b01000111101: pixels = 8'b01100110; //  XX  XX
    11'b01000111110: pixels = 8'b00111110; //   XXXXX
    11'b01000111111: pixels = 8'b00000000; //

    11'b01001000000: pixels = 8'b11001100; // XX  XX
    11'b01001000001: pixels = 8'b11001100; // XX  XX
    11'b01001000010: pixels = 8'b11001100; // XX  XX
    11'b01001000011: pixels = 8'b11111100; // XXXXXX
    11'b01001000100: pixels = 8'b11001100; // XX  XX
    11'b01001000101: pixels = 8'b11001100; // XX  XX
    11'b01001000110: pixels = 8'b11001100; // XX  XX
    11'b01001000111: pixels = 8'b00000000; //

    11'b01001010000: pixels = 8'b00011110; //    XXXX
    11'b01001010001: pixels = 8'b00001100; //     XX
    11'b01001010010: pixels = 8'b00001100; //     XX
    11'b01001010011: pixels = 8'b00001100; //     XX
    11'b01001010100: pixels = 8'b11001100; // XX  XX
    11'b01001010101: pixels = 8'b11001100; // XX  XX
    11'b01001010110: pixels = 8'b01111000; //  XXXX
    11'b01001010111: pixels = 8'b00000000; //

    11'b01001011000: pixels = 8'b11100110; // XXX  XX
    11'b01001011001: pixels = 8'b01100110; //  XX  XX
    11'b01001011010: pixels = 8'b01101100; //  XX XX
    11'b01001011011: pixels = 8'b01111000; //  XXXX
    11'b01001011100: pixels = 8'b01101100; //  XX XX
    11'b01001011101: pixels = 8'b01100110; //  XX  XX
    11'b01001011110: pixels = 8'b11100110; // XXX  XX
    11'b01001011111: pixels = 8'b00000000; //

    11'b01001100000: pixels = 8'b11110000; // XXXX
    11'b01001100001: pixels = 8'b01100000; //  XX
    11'b01001100010: pixels = 8'b01100000; //  XX
    11'b01001100011: pixels = 8'b01100000; //  XX
    11'b01001100100: pixels = 8'b01100010; //  XX   X
    11'b01001100101: pixels = 8'b01100110; //  XX  XX
    11'b01001100110: pixels = 8'b11111110; // XXXXXXX
    11'b01001100111: pixels = 8'b00000000; //

    11'b01010001000: pixels = 8'b01111000; //  XXXX
    11'b01010001001: pixels = 8'b11001100; // XX  XX
    11'b01010001010: pixels = 8'b11001100; // XX  XX
    11'b01010001011: pixels = 8'b11001100; // XX  XX
    11'b01010001100: pixels = 8'b11011100; // XX XXX
    11'b01010001101: pixels = 8'b01111000; //  XXXX
    11'b01010001110: pixels = 8'b00011100; //    XXX
    11'b01010001111: pixels = 8'b00000000; //

    11'b01010111000: pixels = 8'b11000110; // XX   XX
    11'b01010111001: pixels = 8'b11000110; // XX   XX
    11'b01010111010: pixels = 8'b11000110; // XX   XX
    11'b01010111011: pixels = 8'b11010110; // XX X XX
    11'b01010111100: pixels = 8'b11111110; // XXXXXXX
    11'b01010111101: pixels = 8'b11101110; // XXX XXX
    11'b01010111110: pixels = 8'b11000110; // XX   XX
    11'b01010111111: pixels = 8'b00000000; //

    11'b01000101000: pixels = 8'b11111110; // XXXXXXX
    11'b01000101001: pixels = 8'b01100010; //  XX   X
    11'b01000101010: pixels = 8'b01101000; //  XX X
    11'b01000101011: pixels = 8'b01111000; //  XXXX
    11'b01000101100: pixels = 8'b01101000; //  XX X
    11'b01000101101: pixels = 8'b01100010; //  XX   X
    11'b01000101110: pixels = 8'b11111110; // XXXXXXX
    11'b01000101111: pixels = 8'b00000000; //

    11'b01010010000: pixels = 8'b11111100; // XXXXXX
    11'b01010010001: pixels = 8'b01100110; //  XX  XX
    11'b01010010010: pixels = 8'b01100110; //  XX  XX
    11'b01010010011: pixels = 8'b01111100; //  XXXXX
    11'b01010010100: pixels = 8'b01101100; //  XX XX
    11'b01010010101: pixels = 8'b01100110; //  XX  XX
    11'b01010010110: pixels = 8'b11100110; // XXX  XX
    11'b01010010111: pixels = 8'b00000000; //

    11'b01010100000: pixels = 8'b11111100; // XXXXXX
    11'b01010100001: pixels = 8'b10110100; // X XX X
    11'b01010100010: pixels = 8'b00110000; //   XX
    11'b01010100011: pixels = 8'b00110000; //   XX
    11'b01010100100: pixels = 8'b00110000; //   XX
    11'b01010100101: pixels = 8'b00110000; //   XX
    11'b01010100110: pixels = 8'b01111000; //  XXXX
    11'b01010100111: pixels = 8'b00000000; //

    11'b01011010000: pixels = 8'b11111110; // XXXXXXX
    11'b01011010001: pixels = 8'b11000110; // XX   XX
    11'b01011010010: pixels = 8'b10001100; // X   XX
    11'b01011010011: pixels = 8'b00011000; //    XX
    11'b01011010100: pixels = 8'b00110010; //   XX  X
    11'b01011010101: pixels = 8'b01100110; //  XX  XX
    11'b01011010110: pixels = 8'b11111110; // XXXXXXX
    11'b01011010111: pixels = 8'b00000000; //

    11'b01010101000: pixels = 8'b11001100; // XX  XX
    11'b01010101001: pixels = 8'b11001100; // XX  XX
    11'b01010101010: pixels = 8'b11001100; // XX  XX
    11'b01010101011: pixels = 8'b11001100; // XX  XX
    11'b01010101100: pixels = 8'b11001100; // XX  XX
    11'b01010101101: pixels = 8'b11001100; // XX  XX
    11'b01010101110: pixels = 8'b11111100; // XXXXXX
    11'b01010101111: pixels = 8'b00000000; //

    11'b01001001000: pixels = 8'b01111000; //  XXXX
    11'b01001001001: pixels = 8'b00110000; //   XX
    11'b01001001010: pixels = 8'b00110000; //   XX
    11'b01001001011: pixels = 8'b00110000; //   XX
    11'b01001001100: pixels = 8'b00110000; //   XX
    11'b01001001101: pixels = 8'b00110000; //   XX
    11'b01001001110: pixels = 8'b01111000; //  XXXX
    11'b01001001111: pixels = 8'b00000000; //

    11'b01001111000: pixels = 8'b00111000; //   XXX
    11'b01001111001: pixels = 8'b01101100; //  XX XX
    11'b01001111010: pixels = 8'b11000110; // XX   XX
    11'b01001111011: pixels = 8'b11000110; // XX   XX
    11'b01001111100: pixels = 8'b11000110; // XX   XX
    11'b01001111101: pixels = 8'b01101100; //  XX XX
    11'b01001111110: pixels = 8'b00111000; //   XXX
    11'b01001111111: pixels = 8'b00000000; //

    11'b01010000000: pixels = 8'b11111100; // XXXXXX
    11'b01010000001: pixels = 8'b01100110; //  XX  XX
    11'b01010000010: pixels = 8'b01100110; //  XX  XX
    11'b01010000011: pixels = 8'b01111100; //  XXXXX
    11'b01010000100: pixels = 8'b01100000; //  XX
    11'b01010000101: pixels = 8'b01100000; //  XX
    11'b01010000110: pixels = 8'b11110000; // XXXX
    11'b01010000111: pixels = 8'b00000000; //

    11'b01011001000: pixels = 8'b11001100; // XX  XX
    11'b01011001001: pixels = 8'b11001100; // XX  XX
    11'b01011001010: pixels = 8'b11001100; // XX  XX
    11'b01011001011: pixels = 8'b01111000; //  XXXX
    11'b01011001100: pixels = 8'b00110000; //   XX
    11'b01011001101: pixels = 8'b00110000; //   XX
    11'b01011001110: pixels = 8'b01111000; //  XXXX
    11'b01011001111: pixels = 8'b00000000; //

    11'b01011000000: pixels = 8'b11000110; // XX   XX
    11'b01011000001: pixels = 8'b11000110; // XX   XX
    11'b01011000010: pixels = 8'b01101100; //  XX XX
    11'b01011000011: pixels = 8'b00111000; //   XXX
    11'b01011000100: pixels = 8'b00111000; //   XXX
    11'b01011000101: pixels = 8'b01101100; //  XX XX
    11'b01011000110: pixels = 8'b11000110; // XX   XX
    11'b01011000111: pixels = 8'b00000000; //

    11'b01000011000: pixels = 8'b00111100; //   XXXX
    11'b01000011001: pixels = 8'b01100110; //  XX  XX
    11'b01000011010: pixels = 8'b11000000; // XX
    11'b01000011011: pixels = 8'b11000000; // XX
    11'b01000011100: pixels = 8'b11000000; // XX
    11'b01000011101: pixels = 8'b01100110; //  XX  XX
    11'b01000011110: pixels = 8'b00111100; //   XXXX
    11'b01000011111: pixels = 8'b00000000; //

    11'b01010110000: pixels = 8'b11001100; // XX  XX
    11'b01010110001: pixels = 8'b11001100; // XX  XX
    11'b01010110010: pixels = 8'b11001100; // XX  XX
    11'b01010110011: pixels = 8'b11001100; // XX  XX
    11'b01010110100: pixels = 8'b11001100; // XX  XX
    11'b01010110101: pixels = 8'b01111000; //  XXXX
    11'b01010110110: pixels = 8'b00110000; //   XX
    11'b01010110111: pixels = 8'b00000000; //

    11'b01000010000: pixels = 8'b11111100; // XXXXXX
    11'b01000010001: pixels = 8'b01100110; //  XX  XX
    11'b01000010010: pixels = 8'b01100110; //  XX  XX
    11'b01000010011: pixels = 8'b01111100; //  XXXXX
    11'b01000010100: pixels = 8'b01100110; //  XX  XX
    11'b01000010101: pixels = 8'b01100110; //  XX  XX
    11'b01000010110: pixels = 8'b11111100; // XXXXXX
    11'b01000010111: pixels = 8'b00000000; //

    11'b01001110000: pixels = 8'b11000110; // XX   XX
    11'b01001110001: pixels = 8'b11100110; // XXX  XX
    11'b01001110010: pixels = 8'b11110110; // XXXX XX
    11'b01001110011: pixels = 8'b11011110; // XX XXXX
    11'b01001110100: pixels = 8'b11001110; // XX  XXX
    11'b01001110101: pixels = 8'b11000110; // XX   XX
    11'b01001110110: pixels = 8'b11000110; // XX   XX
    11'b01001110111: pixels = 8'b00000000; //

    11'b01001101000: pixels = 8'b11000110; // XX   XX
    11'b01001101001: pixels = 8'b11101110; // XXX XXX
    11'b01001101010: pixels = 8'b11111110; // XXXXXXX
    11'b01001101011: pixels = 8'b11111110; // XXXXXXX
    11'b01001101100: pixels = 8'b11010110; // XX X XX
    11'b01001101101: pixels = 8'b11000110; // XX   XX
    11'b01001101110: pixels = 8'b11000110; // XX   XX
    11'b01001101111: pixels = 8'b00000000; //

    11'b00101100000: pixels = 8'b00000000; //
    11'b00101100001: pixels = 8'b00000000; //
    11'b00101100010: pixels = 8'b00000000; //
    11'b00101100011: pixels = 8'b00000000; //
    11'b00101100100: pixels = 8'b00000000; //
    11'b00101100101: pixels = 8'b00110000; //   XX
    11'b00101100110: pixels = 8'b00110000; //   XX
    11'b00101100111: pixels = 8'b01100000; //  XX

    11'b00101110000: pixels = 8'b00000000; //
    11'b00101110001: pixels = 8'b00000000; //
    11'b00101110010: pixels = 8'b00000000; //
    11'b00101110011: pixels = 8'b00000000; //
    11'b00101110100: pixels = 8'b00000000; //
    11'b00101110101: pixels = 8'b00110000; //   XX
    11'b00101110110: pixels = 8'b00110000; //   XX
    11'b00101110111: pixels = 8'b00000000; //

    11'b00101101000: pixels = 8'b00000000; //
    11'b00101101001: pixels = 8'b00000000; //
    11'b00101101010: pixels = 8'b00000000; //
    11'b00101101011: pixels = 8'b11111100; // XXXXXX
    11'b00101101100: pixels = 8'b00000000; //
    11'b00101101101: pixels = 8'b00000000; //
    11'b00101101110: pixels = 8'b00000000; //
    11'b00101101111: pixels = 8'b00000000; //

    11'b00100111000: pixels = 8'b01100000; //  XX
    11'b00100111001: pixels = 8'b01100000; //  XX
    11'b00100111010: pixels = 8'b11000000; // XX
    11'b00100111011: pixels = 8'b00000000; //
    11'b00100111100: pixels = 8'b00000000; //
    11'b00100111101: pixels = 8'b00000000; //
    11'b00100111110: pixels = 8'b00000000; //
    11'b00100111111: pixels = 8'b00000000; //

    11'b00101011000: pixels = 8'b00000000; //
    11'b00101011001: pixels = 8'b00110000; //   XX
    11'b00101011010: pixels = 8'b00110000; //   XX
    11'b00101011011: pixels = 8'b11111100; // XXXXXX
    11'b00101011100: pixels = 8'b00110000; //   XX
    11'b00101011101: pixels = 8'b00110000; //   XX
    11'b00101011110: pixels = 8'b00000000; //
    11'b00101011111: pixels = 8'b00000000; //

    11'b00100000000: pixels = 8'b00000000; //
    11'b00100000001: pixels = 8'b00000000; //
    11'b00100000010: pixels = 8'b00000000; //
    11'b00100000011: pixels = 8'b00000000; //
    11'b00100000100: pixels = 8'b00000000; //
    11'b00100000101: pixels = 8'b00000000; //
    11'b00100000110: pixels = 8'b00000000; //
    11'b00100000111: pixels = 8'b00000000; //

    11'b00111100000: pixels = 8'b00011000; //    XX
    11'b00111100001: pixels = 8'b00110000; //   XX
    11'b00111100010: pixels = 8'b01100000; //  XX
    11'b00111100011: pixels = 8'b11000000; // XX
    11'b00111100100: pixels = 8'b01100000; //  XX
    11'b00111100101: pixels = 8'b00110000; //   XX
    11'b00111100110: pixels = 8'b00011000; //    XX
    11'b00111100111: pixels = 8'b00000000; //

    11'b00111110000: pixels = 8'b01100000; //  XX
    11'b00111110001: pixels = 8'b00110000; //   XX
    11'b00111110010: pixels = 8'b00011000; //    XX
    11'b00111110011: pixels = 8'b00001100; //     XX
    11'b00111110100: pixels = 8'b00011000; //    XX
    11'b00111110101: pixels = 8'b00110000; //   XX
    11'b00111110110: pixels = 8'b01100000; //  XX
    11'b00111110111: pixels = 8'b00000000; //

    11'b00111011000: pixels = 8'b00000000; //
    11'b00111011001: pixels = 8'b00110000; //   XX
    11'b00111011010: pixels = 8'b00110000; //   XX
    11'b00111011011: pixels = 8'b00000000; //
    11'b00111011100: pixels = 8'b00000000; //
    11'b00111011101: pixels = 8'b00110000; //   XX
    11'b00111011110: pixels = 8'b00110000; //   XX
    11'b00111011111: pixels = 8'b01100000; //  XX

    11'b00111010000: pixels = 8'b00000000; //
    11'b00111010001: pixels = 8'b00110000; //   XX
    11'b00111010010: pixels = 8'b00110000; //   XX
    11'b00111010011: pixels = 8'b00000000; //
    11'b00111010100: pixels = 8'b00000000; //
    11'b00111010101: pixels = 8'b00110000; //   XX
    11'b00111010110: pixels = 8'b00110000; //   XX
    11'b00111010111: pixels = 8'b00000000; //

    11'b01011111000: pixels = 8'b00000000; //
    11'b01011111001: pixels = 8'b00000000; //
    11'b01011111010: pixels = 8'b00000000; //
    11'b01011111011: pixels = 8'b00000000; //
    11'b01011111100: pixels = 8'b00000000; //
    11'b01011111101: pixels = 8'b00000000; //
    11'b01011111110: pixels = 8'b00000000; //
    11'b01011111111: pixels = 8'b11111111; // XXXXXXXX

    11'b01111110000: pixels = 8'b01110110; //  XXX XX
    11'b01111110001: pixels = 8'b11011100; // XX XXX
    11'b01111110010: pixels = 8'b00000000; //
    11'b01111110011: pixels = 8'b00000000; //
    11'b01111110100: pixels = 8'b00000000; //
    11'b01111110101: pixels = 8'b00000000; //
    11'b01111110110: pixels = 8'b00000000; //
    11'b01111110111: pixels = 8'b00000000; //

    11'b00100001000: pixels = 8'b00011000; //    XX
    11'b00100001001: pixels = 8'b00111100; //   XXXX
    11'b00100001010: pixels = 8'b00111100; //   XXXX
    11'b00100001011: pixels = 8'b00011000; //    XX
    11'b00100001100: pixels = 8'b00011000; //    XX
    11'b00100001101: pixels = 8'b00000000; //
    11'b00100001110: pixels = 8'b00011000; //    XX
    11'b00100001111: pixels = 8'b00000000; //

    11'b00100010000: pixels = 8'b01101100; //  XX XX
    11'b00100010001: pixels = 8'b01101100; //  XX XX
    11'b00100010010: pixels = 8'b00000000; //
    11'b00100010011: pixels = 8'b00000000; //
    11'b00100010100: pixels = 8'b00000000; //
    11'b00100010101: pixels = 8'b00000000; //
    11'b00100010110: pixels = 8'b00000000; //
    11'b00100010111: pixels = 8'b00000000; //

    11'b00100011000: pixels = 8'b01101100; //  XX XX
    11'b00100011001: pixels = 8'b01101100; //  XX XX
    11'b00100011010: pixels = 8'b11111110; // XXXXXXX
    11'b00100011011: pixels = 8'b01101100; //  XX XX
    11'b00100011100: pixels = 8'b11111110; // XXXXXXX
    11'b00100011101: pixels = 8'b01101100; //  XX XX
    11'b00100011110: pixels = 8'b01101100; //  XX XX
    11'b00100011111: pixels = 8'b00000000; //

    11'b00100100000: pixels = 8'b00110000; //   XX
    11'b00100100001: pixels = 8'b01111100; //  XXXXX
    11'b00100100010: pixels = 8'b11000000; // XX
    11'b00100100011: pixels = 8'b01111000; //  XXXX
    11'b00100100100: pixels = 8'b00001100; //     XX
    11'b00100100101: pixels = 8'b11111000; // XXXXX
    11'b00100100110: pixels = 8'b00110000; //   XX
    11'b00100100111: pixels = 8'b00000000; //

    11'b00100101000: pixels = 8'b00000000; //
    11'b00100101001: pixels = 8'b11000110; // XX   XX
    11'b00100101010: pixels = 8'b11001100; // XX  XX
    11'b00100101011: pixels = 8'b00011000; //    XX
    11'b00100101100: pixels = 8'b00110000; //   XX
    11'b00100101101: pixels = 8'b01100110; //  XX  XX
    11'b00100101110: pixels = 8'b11000110; // XX   XX
    11'b00100101111: pixels = 8'b00000000; //

    11'b00100110000: pixels = 8'b00111000; //   XXX
    11'b00100110001: pixels = 8'b01101100; //  XX XX
    11'b00100110010: pixels = 8'b00111000; //   XXX
    11'b00100110011: pixels = 8'b01110110; //  XXX XX
    11'b00100110100: pixels = 8'b11011100; // XX XXX
    11'b00100110101: pixels = 8'b11001100; // XX  XX
    11'b00100110110: pixels = 8'b01110110; //  XXX XX
    11'b00100110111: pixels = 8'b00000000; //

    11'b00101111000: pixels = 8'b00000110; //      XX
    11'b00101111001: pixels = 8'b00001100; //     XX
    11'b00101111010: pixels = 8'b00011000; //    XX
    11'b00101111011: pixels = 8'b00110000; //   XX
    11'b00101111100: pixels = 8'b01100000; //  XX
    11'b00101111101: pixels = 8'b11000000; // XX
    11'b00101111110: pixels = 8'b10000000; // X
    11'b00101111111: pixels = 8'b00000000; //

    11'b00101000000: pixels = 8'b00011000; //    XX
    11'b00101000001: pixels = 8'b00110000; //   XX
    11'b00101000010: pixels = 8'b01100000; //  XX
    11'b00101000011: pixels = 8'b01100000; //  XX
    11'b00101000100: pixels = 8'b01100000; //  XX
    11'b00101000101: pixels = 8'b00110000; //   XX
    11'b00101000110: pixels = 8'b00011000; //    XX
    11'b00101000111: pixels = 8'b00000000; //

    11'b00101001000: pixels = 8'b01100000; //  XX
    11'b00101001001: pixels = 8'b00110000; //   XX
    11'b00101001010: pixels = 8'b00011000; //    XX
    11'b00101001011: pixels = 8'b00011000; //    XX
    11'b00101001100: pixels = 8'b00011000; //    XX
    11'b00101001101: pixels = 8'b00110000; //   XX
    11'b00101001110: pixels = 8'b01100000; //  XX
    11'b00101001111: pixels = 8'b00000000; //

    11'b00111101000: pixels = 8'b00000000; //
    11'b00111101001: pixels = 8'b00000000; //
    11'b00111101010: pixels = 8'b11111100; // XXXXXX
    11'b00111101011: pixels = 8'b00000000; //
    11'b00111101100: pixels = 8'b00000000; //
    11'b00111101101: pixels = 8'b11111100; // XXXXXX
    11'b00111101110: pixels = 8'b00000000; //
    11'b00111101111: pixels = 8'b00000000; //

    11'b00111111000: pixels = 8'b01111000; //  XXXX
    11'b00111111001: pixels = 8'b11001100; // XX  XX
    11'b00111111010: pixels = 8'b00001100; //     XX
    11'b00111111011: pixels = 8'b00011000; //    XX
    11'b00111111100: pixels = 8'b00110000; //   XX
    11'b00111111101: pixels = 8'b00000000; //
    11'b00111111110: pixels = 8'b00110000; //   XX
    11'b00111111111: pixels = 8'b00000000; //

    11'b00101010000: pixels = 8'b00000000; //
    11'b00101010001: pixels = 8'b01100110; //  XX  XX
    11'b00101010010: pixels = 8'b00111100; //   XXXX
    11'b00101010011: pixels = 8'b11111111; // XXXXXXXX
    11'b00101010100: pixels = 8'b00111100; //   XXXX
    11'b00101010101: pixels = 8'b01100110; //  XX  XX
    11'b00101010110: pixels = 8'b00000000; //
    11'b00101010111: pixels = 8'b00000000; //

    11'b01110001000: pixels = 8'b00000000; //
    11'b01110001001: pixels = 8'b00000000; //
    11'b01110001010: pixels = 8'b01110110; //  XXX XX
    11'b01110001011: pixels = 8'b11001100; // XX  XX
    11'b01110001100: pixels = 8'b11001100; // XX  XX
    11'b01110001101: pixels = 8'b01111100; //  XXXXX
    11'b01110001110: pixels = 8'b00001100; //     XX
    11'b01110001111: pixels = 8'b00011110; //    XXXX

    11'b01110111000: pixels = 8'b00000000; //
    11'b01110111001: pixels = 8'b00000000; //
    11'b01110111010: pixels = 8'b11000110; // XX   XX
    11'b01110111011: pixels = 8'b11010110; // XX X XX
    11'b01110111100: pixels = 8'b11111110; // XXXXXXX
    11'b01110111101: pixels = 8'b11111110; // XXXXXXX
    11'b01110111110: pixels = 8'b01101100; //  XX XX
    11'b01110111111: pixels = 8'b00000000; //

    11'b01100101000: pixels = 8'b00000000; //
    11'b01100101001: pixels = 8'b00000000; //
    11'b01100101010: pixels = 8'b01111000; //  XXXX
    11'b01100101011: pixels = 8'b11001100; // XX  XX
    11'b01100101100: pixels = 8'b11111100; // XXXXXX
    11'b01100101101: pixels = 8'b11000000; // XX
    11'b01100101110: pixels = 8'b01111000; //  XXXX
    11'b01100101111: pixels = 8'b00000000; //

    11'b01110010000: pixels = 8'b00000000; //
    11'b01110010001: pixels = 8'b00000000; //
    11'b01110010010: pixels = 8'b11011100; // XX XXX
    11'b01110010011: pixels = 8'b01110110; //  XXX XX
    11'b01110010100: pixels = 8'b01100110; //  XX  XX
    11'b01110010101: pixels = 8'b01100000; //  XX
    11'b01110010110: pixels = 8'b11110000; // XXXX
    11'b01110010111: pixels = 8'b00000000; //

    11'b01110100000: pixels = 8'b00010000; //    X
    11'b01110100001: pixels = 8'b00110000; //   XX
    11'b01110100010: pixels = 8'b01111100; //  XXXXX
    11'b01110100011: pixels = 8'b00110000; //   XX
    11'b01110100100: pixels = 8'b00110000; //   XX
    11'b01110100101: pixels = 8'b00110100; //   XX X
    11'b01110100110: pixels = 8'b00011000; //    XX
    11'b01110100111: pixels = 8'b00000000; //

    11'b01111010000: pixels = 8'b00000000; //
    11'b01111010001: pixels = 8'b00000000; //
    11'b01111010010: pixels = 8'b11111100; // XXXXXX
    11'b01111010011: pixels = 8'b10011000; // X  XX
    11'b01111010100: pixels = 8'b00110000; //   XX
    11'b01111010101: pixels = 8'b01100100; //  XX  X
    11'b01111010110: pixels = 8'b11111100; // XXXXXX
    11'b01111010111: pixels = 8'b00000000; //

    11'b01110101000: pixels = 8'b00000000; //
    11'b01110101001: pixels = 8'b00000000; //
    11'b01110101010: pixels = 8'b11001100; // XX  XX
    11'b01110101011: pixels = 8'b11001100; // XX  XX
    11'b01110101100: pixels = 8'b11001100; // XX  XX
    11'b01110101101: pixels = 8'b11001100; // XX  XX
    11'b01110101110: pixels = 8'b01110110; //  XXX XX
    11'b01110101111: pixels = 8'b00000000; //

    11'b01101001000: pixels = 8'b00110000; //   XX
    11'b01101001001: pixels = 8'b00000000; //
    11'b01101001010: pixels = 8'b01110000; //  XXX
    11'b01101001011: pixels = 8'b00110000; //   XX
    11'b01101001100: pixels = 8'b00110000; //   XX
    11'b01101001101: pixels = 8'b00110000; //   XX
    11'b01101001110: pixels = 8'b01111000; //  XXXX
    11'b01101001111: pixels = 8'b00000000; //

    11'b01101111000: pixels = 8'b00000000; //
    11'b01101111001: pixels = 8'b00000000; //
    11'b01101111010: pixels = 8'b01111000; //  XXXX
    11'b01101111011: pixels = 8'b11001100; // XX  XX
    11'b01101111100: pixels = 8'b11001100; // XX  XX
    11'b01101111101: pixels = 8'b11001100; // XX  XX
    11'b01101111110: pixels = 8'b01111000; //  XXXX
    11'b01101111111: pixels = 8'b00000000; //

    11'b01110000000: pixels = 8'b00000000; //
    11'b01110000001: pixels = 8'b00000000; //
    11'b01110000010: pixels = 8'b11011100; // XX XXX
    11'b01110000011: pixels = 8'b01100110; //  XX  XX
    11'b01110000100: pixels = 8'b01100110; //  XX  XX
    11'b01110000101: pixels = 8'b01111100; //  XXXXX
    11'b01110000110: pixels = 8'b01100000; //  XX
    11'b01110000111: pixels = 8'b11110000; // XXXX

    11'b01100001000: pixels = 8'b00000000; //
    11'b01100001001: pixels = 8'b00000000; //
    11'b01100001010: pixels = 8'b01111000; //  XXXX
    11'b01100001011: pixels = 8'b00001100; //     XX
    11'b01100001100: pixels = 8'b01111100; //  XXXXX
    11'b01100001101: pixels = 8'b11001100; // XX  XX
    11'b01100001110: pixels = 8'b01110110; //  XXX XX
    11'b01100001111: pixels = 8'b00000000; //

    11'b01110011000: pixels = 8'b00000000; //
    11'b01110011001: pixels = 8'b00000000; //
    11'b01110011010: pixels = 8'b01111100; //  XXXXX
    11'b01110011011: pixels = 8'b11000000; // XX
    11'b01110011100: pixels = 8'b01111000; //  XXXX
    11'b01110011101: pixels = 8'b00001100; //     XX
    11'b01110011110: pixels = 8'b11111000; // XXXXX
    11'b01110011111: pixels = 8'b00000000; //

    11'b01100100000: pixels = 8'b00011100; //    XXX
    11'b01100100001: pixels = 8'b00001100; //     XX
    11'b01100100010: pixels = 8'b00001100; //     XX
    11'b01100100011: pixels = 8'b01111100; //  XXXXX
    11'b01100100100: pixels = 8'b11001100; // XX  XX
    11'b01100100101: pixels = 8'b11001100; // XX  XX
    11'b01100100110: pixels = 8'b01110110; //  XXX XX
    11'b01100100111: pixels = 8'b00000000; //

    11'b01100110000: pixels = 8'b00111000; //   XXX
    11'b01100110001: pixels = 8'b01101100; //  XX XX
    11'b01100110010: pixels = 8'b01100000; //  XX
    11'b01100110011: pixels = 8'b11110000; // XXXX
    11'b01100110100: pixels = 8'b01100000; //  XX
    11'b01100110101: pixels = 8'b01100000; //  XX
    11'b01100110110: pixels = 8'b11110000; // XXXX
    11'b01100110111: pixels = 8'b00000000; //

    11'b01100111000: pixels = 8'b00000000; //
    11'b01100111001: pixels = 8'b00000000; //
    11'b01100111010: pixels = 8'b01110110; //  XXX XX
    11'b01100111011: pixels = 8'b11001100; // XX  XX
    11'b01100111100: pixels = 8'b11001100; // XX  XX
    11'b01100111101: pixels = 8'b01111100; //  XXXXX
    11'b01100111110: pixels = 8'b00001100; //     XX
    11'b01100111111: pixels = 8'b11111000; // XXXXX

    11'b01101000000: pixels = 8'b11100000; // XXX
    11'b01101000001: pixels = 8'b01100000; //  XX
    11'b01101000010: pixels = 8'b01101100; //  XX XX
    11'b01101000011: pixels = 8'b01110110; //  XXX XX
    11'b01101000100: pixels = 8'b01100110; //  XX  XX
    11'b01101000101: pixels = 8'b01100110; //  XX  XX
    11'b01101000110: pixels = 8'b11100110; // XXX  XX
    11'b01101000111: pixels = 8'b00000000; //

    11'b01101010000: pixels = 8'b00001100; //     XX
    11'b01101010001: pixels = 8'b00000000; //
    11'b01101010010: pixels = 8'b00001100; //     XX
    11'b01101010011: pixels = 8'b00001100; //     XX
    11'b01101010100: pixels = 8'b00001100; //     XX
    11'b01101010101: pixels = 8'b11001100; // XX  XX
    11'b01101010110: pixels = 8'b11001100; // XX  XX
    11'b01101010111: pixels = 8'b01111000; //  XXXX

    11'b01101011000: pixels = 8'b11100000; // XXX
    11'b01101011001: pixels = 8'b01100000; //  XX
    11'b01101011010: pixels = 8'b01100110; //  XX  XX
    11'b01101011011: pixels = 8'b01101100; //  XX XX
    11'b01101011100: pixels = 8'b01111000; //  XXXX
    11'b01101011101: pixels = 8'b01101100; //  XX XX
    11'b01101011110: pixels = 8'b11100110; // XXX  XX
    11'b01101011111: pixels = 8'b00000000; //

    11'b01101100000: pixels = 8'b01110000; //  XXX
    11'b01101100001: pixels = 8'b00110000; //   XX
    11'b01101100010: pixels = 8'b00110000; //   XX
    11'b01101100011: pixels = 8'b00110000; //   XX
    11'b01101100100: pixels = 8'b00110000; //   XX
    11'b01101100101: pixels = 8'b00110000; //   XX
    11'b01101100110: pixels = 8'b01111000; //  XXXX
    11'b01101100111: pixels = 8'b00000000; //

    11'b01111001000: pixels = 8'b00000000; //
    11'b01111001001: pixels = 8'b00000000; //
    11'b01111001010: pixels = 8'b11001100; // XX  XX
    11'b01111001011: pixels = 8'b11001100; // XX  XX
    11'b01111001100: pixels = 8'b11001100; // XX  XX
    11'b01111001101: pixels = 8'b01111100; //  XXXXX
    11'b01111001110: pixels = 8'b00001100; //     XX
    11'b01111001111: pixels = 8'b11111000; // XXXXX

    11'b01111000000: pixels = 8'b00000000; //
    11'b01111000001: pixels = 8'b00000000; //
    11'b01111000010: pixels = 8'b11000110; // XX   XX
    11'b01111000011: pixels = 8'b01101100; //  XX XX
    11'b01111000100: pixels = 8'b00111000; //   XXX
    11'b01111000101: pixels = 8'b01101100; //  XX XX
    11'b01111000110: pixels = 8'b11000110; // XX   XX
    11'b01111000111: pixels = 8'b00000000; //

    11'b01100011000: pixels = 8'b00000000; //
    11'b01100011001: pixels = 8'b00000000; //
    11'b01100011010: pixels = 8'b01111000; //  XXXX
    11'b01100011011: pixels = 8'b11001100; // XX  XX
    11'b01100011100: pixels = 8'b11000000; // XX
    11'b01100011101: pixels = 8'b11001100; // XX  XX
    11'b01100011110: pixels = 8'b01111000; //  XXXX
    11'b01100011111: pixels = 8'b00000000; //

    11'b01110110000: pixels = 8'b00000000; //
    11'b01110110001: pixels = 8'b00000000; //
    11'b01110110010: pixels = 8'b11001100; // XX  XX
    11'b01110110011: pixels = 8'b11001100; // XX  XX
    11'b01110110100: pixels = 8'b11001100; // XX  XX
    11'b01110110101: pixels = 8'b01111000; //  XXXX
    11'b01110110110: pixels = 8'b00110000; //   XX
    11'b01110110111: pixels = 8'b00000000; //

    11'b01100010000: pixels = 8'b11100000; // XXX
    11'b01100010001: pixels = 8'b01100000; //  XX
    11'b01100010010: pixels = 8'b01100000; //  XX
    11'b01100010011: pixels = 8'b01111100; //  XXXXX
    11'b01100010100: pixels = 8'b01100110; //  XX  XX
    11'b01100010101: pixels = 8'b01100110; //  XX  XX
    11'b01100010110: pixels = 8'b11011100; // XX XXX
    11'b01100010111: pixels = 8'b00000000; //

    11'b01101110000: pixels = 8'b00000000; //
    11'b01101110001: pixels = 8'b00000000; //
    11'b01101110010: pixels = 8'b11111000; // XXXXX
    11'b01101110011: pixels = 8'b11001100; // XX  XX
    11'b01101110100: pixels = 8'b11001100; // XX  XX
    11'b01101110101: pixels = 8'b11001100; // XX  XX
    11'b01101110110: pixels = 8'b11001100; // XX  XX
    11'b01101110111: pixels = 8'b00000000; //

    11'b01101101000: pixels = 8'b00000000; //
    11'b01101101001: pixels = 8'b00000000; //
    11'b01101101010: pixels = 8'b11001100; // XX  XX
    11'b01101101011: pixels = 8'b11111110; // XXXXXXX
    11'b01101101100: pixels = 8'b11111110; // XXXXXXX
    11'b01101101101: pixels = 8'b11010110; // XX X XX
    11'b01101101110: pixels = 8'b11000110; // XX   XX
    11'b01101101111: pixels = 8'b00000000; //

    11'b01011110000: pixels = 8'b00010000; //    X
    11'b01011110001: pixels = 8'b00111000; //   XXX
    11'b01011110010: pixels = 8'b01101100; //  XX XX
    11'b01011110011: pixels = 8'b11000110; // XX   XX
    11'b01011110100: pixels = 8'b00000000; //
    11'b01011110101: pixels = 8'b00000000; //
    11'b01011110110: pixels = 8'b00000000; //
    11'b01011110111: pixels = 8'b00000000; //

    11'b01011011000: pixels = 8'b01111000; //  XXXX
    11'b01011011001: pixels = 8'b01100000; //  XX
    11'b01011011010: pixels = 8'b01100000; //  XX
    11'b01011011011: pixels = 8'b01100000; //  XX
    11'b01011011100: pixels = 8'b01100000; //  XX
    11'b01011011101: pixels = 8'b01100000; //  XX
    11'b01011011110: pixels = 8'b01111000; //  XXXX
    11'b01011011111: pixels = 8'b00000000; //

    11'b01011101000: pixels = 8'b01111000; //  XXXX
    11'b01011101001: pixels = 8'b00011000; //    XX
    11'b01011101010: pixels = 8'b00011000; //    XX
    11'b01011101011: pixels = 8'b00011000; //    XX
    11'b01011101100: pixels = 8'b00011000; //    XX
    11'b01011101101: pixels = 8'b00011000; //    XX
    11'b01011101110: pixels = 8'b01111000; //  XXXX
    11'b01011101111: pixels = 8'b00000000; //

    11'b01111011000: pixels = 8'b00011100; //    XXX
    11'b01111011001: pixels = 8'b00110000; //   XX
    11'b01111011010: pixels = 8'b00110000; //   XX
    11'b01111011011: pixels = 8'b11100000; // XXX
    11'b01111011100: pixels = 8'b00110000; //   XX
    11'b01111011101: pixels = 8'b00110000; //   XX
    11'b01111011110: pixels = 8'b00011100; //    XXX
    11'b01111011111: pixels = 8'b00000000; //

    11'b01111101000: pixels = 8'b11100000; // XXX
    11'b01111101001: pixels = 8'b00110000; //   XX
    11'b01111101010: pixels = 8'b00110000; //   XX
    11'b01111101011: pixels = 8'b00011100; //    XXX
    11'b01111101100: pixels = 8'b00110000; //   XX
    11'b01111101101: pixels = 8'b00110000; //   XX
    11'b01111101110: pixels = 8'b11100000; // XXX
    11'b01111101111: pixels = 8'b00000000; //

    11'b01000000000: pixels = 8'b01111100; //  XXXXX
    11'b01000000001: pixels = 8'b11000110; // XX   XX
    11'b01000000010: pixels = 8'b11011110; // XX XXXX
    11'b01000000011: pixels = 8'b11011110; // XX XXXX
    11'b01000000100: pixels = 8'b11011110; // XX XXXX
    11'b01000000101: pixels = 8'b11000000; // XX
    11'b01000000110: pixels = 8'b01111000; //  XXXX
    11'b01000000111: pixels = 8'b00000000; //

    11'b01011100000: pixels = 8'b11000000; // XX
    11'b01011100001: pixels = 8'b01100000; //  XX
    11'b01011100010: pixels = 8'b00110000; //   XX
    11'b01011100011: pixels = 8'b00011000; //    XX
    11'b01011100100: pixels = 8'b00001100; //     XX
    11'b01011100101: pixels = 8'b00000110; //      XX
    11'b01011100110: pixels = 8'b00000010; //       X
    11'b01011100111: pixels = 8'b00000000; //

    11'b01111100000: pixels = 8'b00011000; //    XX
    11'b01111100001: pixels = 8'b00011000; //    XX
    11'b01111100010: pixels = 8'b00011000; //    XX
    11'b01111100011: pixels = 8'b00000000; //
    11'b01111100100: pixels = 8'b00011000; //    XX
    11'b01111100101: pixels = 8'b00011000; //    XX
    11'b01111100110: pixels = 8'b00011000; //    XX
    11'b01111100111: pixels = 8'b00000000; //

    11'b01111111000: pixels = 8'b11111111; // XXXXXXXX
    11'b01111111001: pixels = 8'b11111111; // XXXXXXXX
    11'b01111111010: pixels = 8'b11111111; // XXXXXXXX
    11'b01111111011: pixels = 8'b11111111; // XXXXXXXX
    11'b01111111100: pixels = 8'b11111111; // XXXXXXXX
    11'b01111111101: pixels = 8'b11111111; // XXXXXXXX
    11'b01111111110: pixels = 8'b11111111; // XXXXXXXX
    11'b01111111111: pixels = 8'b11111111; // XXXXXXXX

    11'b01100000000: pixels = 8'b01100000; //  XX
    11'b01100000001: pixels = 8'b00110000; //   XX
    11'b01100000010: pixels = 8'b00000000; //
    11'b01100000011: pixels = 8'b00000000; //
    11'b01100000100: pixels = 8'b00000000; //
    11'b01100000101: pixels = 8'b00000000; //
    11'b01100000110: pixels = 8'b00000000; //
    11'b01100000111: pixels = 8'b00000000; //


    default: pixels = 8'b00000000;
  endcase
endmodule

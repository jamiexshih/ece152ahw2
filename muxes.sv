// Write your modules here!
module muxes (
  input a_i, b_i, c_i, d_i,
  input logic [1:0] sel4_i,
  output logic y0_o, y1_o
  );
    // y0_o: 2-input mux with XOR
    assign y0_o = (sel4_i[0]) ? c_i : (a_i ^ b_i);

    // y1_o: 4-input mux
    always_comb begin
        case (sel4_i)
            2'b00: y1_o = d_i;
            2'b01: y1_o = c_i;
            2'b10: y1_o = 1'b0;
            2'b11: y1_o = 1'b0;
            default: y1_o = 1'b0;
        endcase
    end
endmodule

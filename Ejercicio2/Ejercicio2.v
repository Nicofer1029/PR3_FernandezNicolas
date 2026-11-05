module Ejercicio2(
    input CLOCK_50,
    output reg clock
);

    reg [24:0] contador = 0;

    always @(posedge CLOCK_50) begin
        if (contador == 24999999) begin
            contador <= 0;
            clock <= ~clock;
        end
        else begin
            contador <= contador + 1'b1;
        end
    end

endmodule

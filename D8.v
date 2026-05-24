module D8(D, clk, Q, Qbar);

input D, clk;
output reg Q;
output Qbar;

assign Qbar = ~Q;

initial
begin
    Q = 0;
end

always @(posedge clk)
begin
    Q <= D;
end

endmodule
`include "alarm.v"
`include "tester.v"

module alarm_tb;

wire sLuz, sPrta, sIgn;
wire sAlr;

initial begin
    $dumpfile("results.vcd");
    $dumpvars(-1, U0);
end

alarm U0 (
    .sLuz   (sLuz),
    .sPrta  (sPrta),
    .sIgn   (sIgn),
    .sAlr   (sAlr)
);

tester T0 (
    .sLuz   (sLuz),
    .sPrta  (sPrta),
    .sIgn   (sIgn),
    .sAlr   (sAlr)
);

endmodule
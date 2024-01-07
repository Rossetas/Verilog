module alarm (
    sLuz,   // signal luz encendida
    sPrta,  // signal Puerta abierta 
    sIgn,   // signal ignicion encendida
    sAlr    // signal de alarma
);

input sLuz, sPrta, sIgn;
output sAlr;

reg sAlr;

always @(sLuz or sPrta or sIgn)
    begin
        if (sLuz == 1 & sPrta == 1 & sIgn == 0) begin
            sAlr = 1;
        end
        else begin
            sAlr = 0;
        end
    end

endmodule
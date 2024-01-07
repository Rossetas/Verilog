module tester (
    sLuz,
    sPrta,  
    sIgn,
    sAlr   
);

output sLuz, sPrta, sIgn;
input sAlr;

wire sAlr;
reg sLuz, sPrta, sIgn;

initial begin

    sLuz = 0;
    sPrta = 0;
    sIgn = 0;

    #10 sLuz = 1;
        sPrta = 1;
        sIgn = 0;

    #10 sLuz = 0;
        sPrta = 0;
        sIgn = 0;

    #10 sLuz = 1;
        sPrta = 1;
        sIgn = 1;

    #10 sLuz = 0;
        sPrta = 0;
        sIgn = 0;
    
    #50 $finish;
end

endmodule
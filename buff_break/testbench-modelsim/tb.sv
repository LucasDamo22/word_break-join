`timescale 1ns/10ps
module tb;

// clock set for 100MHZ 
    bit clock, reset;
    localparam PERIOD_100MHZ = 10;
    localparam WORD_SIZE = 32;
    logic w_enable;
    logic r_enable;
    logic sig_out;
    reg [(WORD_SIZE-1):0] data_in;
    //logic or;
    logic  [(WORD_SIZE-1):0] data_out;
    logic  full, empty;
    initial
    begin
        reset = 1'b1;
        #13 
        reset = 1'b0;
    end 
   
    initial 
    begin
        clock = 1'b1;
        forever #(PERIOD_100MHZ/2) clock = ~clock;
    end
// actual tb
    initial begin 
        
        #508
        r_enable = 0;
        w_enable = 1;
        //data_in = 0;
        #25
        r_enable = 1;
        #75
        //data_in = 'd45;
        //w_enable = 0;
        #25
        r_enable = 0;
        #55
        r_enable = 0;
        //data_in = 'd111;
        #150
        r_enable = 0;
        #17
        r_enable = 0;
        #700
        r_enable = 1;
        //#150
        //w_enable = 0;
        #12000000
        w_enable = 0;
        #60000000
        w_enable = 1;
        
    end

always begin
    data_in <= 'hAABBCCDD;
    forever #11 data_in <= data_in + 'h01010101;
    // #23 data_in <= 'd2;
    // #23 data_in <= 'd3;
    // #23 data_in <= 'd4;
end




cycle_uart_out #(32, 8, 64) DUT (.clock     (clock),          
                                 .reset     (reset),
                                 .data_in   (data_in),     
                                 .sig       (sig_out),        
                                 .valid_in  (w_enable),
                                 .full      (full),
                                 .empty     (empty));
                        

endmodule
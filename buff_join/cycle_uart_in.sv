module cycle_uart_in#(parameter
    WORD_SIZE = 32,
    WORD_PART = 8,
    MEM_SIZE = 64
)(
    input bit clock,
    input bit reset,
    input bit read_req,
    input bit sig,
    output [WORD_SIZE-1:0] data_out,
    output bit full,
    output bit empty
);


logic [WORD_SIZE-1:0] word_joined;

wire joined_valid;
wire full_int, empty_int;

wire [1:0] credit;


assign full = full_int;
assign empty = empty_int;
assign rx.sig = sig;
assign rx.ready = ~full_int;




//entra palavra de 32 bits, sai palavra de 8 bits
word_join  #(8, 32)   word(.clock(clock),         .reset(reset), 
                          .data_in(rx.data),    .valid_in(rx.valid && ~full_int),
                          .word_out(word_joined),          .credit_out(credit),
                          .valid_o(joined_valid));
//armazena 64 palavras de 32 bits
buffer_fifo #(64, 32) buff(.clock(clock),          .reset(reset),
                           .w_enable(joined_valid),       .r_enable(read_req),
                           .data_in(word_joined),     .data_out(data_out),
                           .full(full_int),          .empty(empty_int));
uart_if #(8)rx();

uart_rx #(8, 115200, 200_000_000 ) uart (
    .rxif       (rx),
    .clk        (clock),
    .rstn       (~reset)
);



endmodule


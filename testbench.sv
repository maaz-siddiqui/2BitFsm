// Code your testbench here
// or browse Examples
module fsm_tb;
initial begin
  $dumpvars(0);
end
logic clk_tb;
logic rst_tb;
logic [1:0] floor_tb;
logic [1:0] cf_tb;

fsm fsm1(
  .rst(rst_tb),
  .clk(clk_tb),
  .floor(floor_tb),
  .cf(cf_tb)
);
  
initial begin
  rst_tb = 1'b1;
  clk_tb = 1'b1;
  floor_tb = 2'b00;
  #5
  rst_tb = 1'b0;
  floor_tb = 2'b11;
  #10
  floor_tb = 2'b10;
  #15
  floor_tb = 2'b01;
  #20
  rst_tb = 1'b1;
  floor_tb = 2'b11;
  #25  
  $finish;
end
always #2.5 clk_tb = ~clk_tb;
endmodule
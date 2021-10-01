// Code your design here
module fsm(
  input logic clk,
  input logic rst,
  input logic [1:0] floor,
  output logic [1:0] cf
);
always @(posedge clk) begin
  if(!rst) begin
    if(floor > cf) begin
        while(floor > cf)begin
          assign cf=cf+1;
        end
    end
    else if(floor < cf) begin 
        while(floor < cf)begin
          assign cf=cf-1;
        end	
    end
    else begin
        assign cf = floor;
    end
  end
  else if(rst) begin
    assign cf = 2'b00;
  end
end
 endmodule
  
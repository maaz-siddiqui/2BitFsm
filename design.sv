// Code your design here
module fsm(
  input wire clk,
  input logic [1:0] floor,
  output logic [1:0] cf
);
always @(posedge clk) begin
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
 endmodule
  
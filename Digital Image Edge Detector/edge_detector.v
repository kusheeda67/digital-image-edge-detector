module edge_detector(

input clk,
input reset,

input [7:0] p1,p2,p3,
input [7:0] p4,p5,p6,
input [7:0] p7,p8,p9,

output reg edge,
output reg [10:0] magnitude

);

integer gx,gy;

always @(posedge clk or posedge reset)
begin

if(reset)
begin
    edge <= 0;
    magnitude <= 0;
end

else
begin

gx = (-p1 + p3) + (-2*p4 + 2*p6) + (-p7 + p9);

gy = (-p1 -2*p2 -p3) + (p7 +2*p8 +p9);

if(gx < 0)
    gx = -gx;

if(gy < 0)
    gy = -gy;

magnitude <= gx + gy;

if((gx + gy) > 200)
    edge <= 1;
else
    edge <= 0;

end

end

endmodule
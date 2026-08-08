`timescale 1ns/1ps

module edge_detector_tb;

reg clk;
reg reset;

reg [7:0] p1,p2,p3,p4,p5,p6,p7,p8,p9;

wire edge;
wire [10:0] magnitude;

edge_detector DUT(

.clk(clk),
.reset(reset),

.p1(p1),.p2(p2),.p3(p3),
.p4(p4),.p5(p5),.p6(p6),
.p7(p7),.p8(p8),.p9(p9),

.edge(edge),
.magnitude(magnitude)

);

always #5 clk = ~clk;

initial
begin

clk=0;
reset=1;

#10;
reset=0;

$display("----------------------------------------------");
$display("Time Magnitude Edge");
$display("----------------------------------------------");

// Flat Image
p1=50; p2=50; p3=50;
p4=50; p5=50; p6=50;
p7=50; p8=50; p9=50;

#10;

$display("%0t %d %b",$time,magnitude,edge);

// Strong Vertical Edge

p1=0; p2=0; p3=255;
p4=0; p5=0; p6=255;
p7=0; p8=0; p9=255;

#10;

$display("%0t %d %b",$time,magnitude,edge);

$finish;

end

endmodule
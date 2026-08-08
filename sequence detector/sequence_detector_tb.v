`timescale 1ns/1ps

module sequence_detector_tb;

reg clk;
reg reset;
reg x;

wire y;

sequence_detector uut(
.clk(clk),
.reset(reset),
.x(x),
.y(y)
);

always #5 clk=~clk;

initial
begin

$dumpfile("waveform.vcd");
$dumpvars(0,sequence_detector_tb);

clk=0;
reset=1;
x=0;

#10 reset=0;

// Input sequence 1101101

#10 x=1;
#10 x=1;
#10 x=0;
#10 x=1;

#10 x=1;
#10 x=0;
#10 x=1;

#20;

$finish;

end

endmodule
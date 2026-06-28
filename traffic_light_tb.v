module traffic_light_tb;
reg clk,rst;
wire[2:0] light_M1;
wire[2:0] light_M2;
wire[2:0] light_S;
wire[2:0] light_MT;
wire[3:0] count;
wire[2:0] ps;

traffic_light_controller dut(.clk(clk),.rst(rst),.light_M1(light_M1),.light_M2(light_M2),.light_MT(light_MT),.light_S(light_S));
initial begin
  clk=1'b1;
  forever #5 clk=~clk;
end

initial begin
  rst=1;
  #20;
  rst=0;
  #3000;
  $finish;
end
initial begin
    $dumpfile("wavetraffic.vcd");
    $dumpvars(0, traffic_light_tb);
end
endmodule

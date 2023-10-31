`timescale 1ns / 1ps
module decoder4_tb; 
reg  [1:0] a;
wire [3:0] Y; 

 
decoder4 I0 (a, Y); 
  initial begin 
   #0  a[1] = 0; a[0] = 0; 
   #10 a[1] = 0; a[0] = 1; 
   #10 a[1] = 1; a[0] = 0;
   #10 a[1] = 1; a[0] = 1; 
  end 
  initial begin
   $monitor("%t| a[1] = %d| a[0] = %d| Y[3] = %d| Y[2] = %d| Y[1] = %d| Y[0] = %d", 
   $time, a[1], a[0], Y[3], Y[2], Y[1], Y[0]); 
  end
endmodule

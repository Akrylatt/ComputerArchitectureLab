module ex2
(
	input [1:0] KEY,
	output [47:0] HEX // displays
);



genvar j;
generate
	for (j = 0; j < 6; j=j+1)
	begin: gen2
		case(j)
		0: assign 	HEX[0] = ~KEY[0],
						HEX[5] = ~KEY[0],
						HEX[6] = ~KEY[0],
						HEX[4] = ~KEY[0],
						HEX[3] = ~KEY[0];
						
		1: assign   HEX[6+j*8] = ~KEY[0];
					
						
		2: assign	
						HEX[4+j*8] = ~KEY[0],
						HEX[5+j*8] = ~KEY[0];
						
		3: assign   
						HEX[6+j*8] = ~KEY[0];
						
		4: assign	HEX[4+j*8] = ~KEY[0],
						HEX[5+j*8] = ~KEY[0];
						
		5: assign   HEX[0+j*8] = ~KEY[0],
						HEX[5+j*8] = ~KEY[0],
						HEX[6+j*8] = ~KEY[0],
						HEX[4+j*8] = ~KEY[0],
						HEX[3+j*8] = ~KEY[0];
						
		endcase
	end
endgenerate
endmodule
		
		
		
						
		
						
						
					
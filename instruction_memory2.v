module instructionmemory(PC, RD);
	input [31:0]PC;
	output [31:0] RD;

reg [31:0] mem1[511:0];
initial
begin
mem1[0] = 32'h00108113;
mem1[1] = 32'h00108113;     //addi x2 ,1 ,(x1)
mem1[2] = 32'h00302123; //sw x3 2(x0)
mem1[3] = 32'h003101B3; //add x3 x2 x3
mem1[4] = 32'h003021A3; //sw x3 3(x0)
      
mem1[5] = 32'h00010093; //     addi x1 0 (x2)
mem1[6] = 32'h00108113; //addi x2 1(x1)
mem1[7] = 32'h003101B3; // add x3 x2 x3
mem1[8] = 32'h00302223; //sw x3 4(x0)

mem1[9] = 32'h00010093; // addi x1 0 (x2)
mem1[10] = 32'h00108113; //   addi x2 1(x1)
mem1[11] = 32'h003101B3; //add x3 x2 x3
mem1[12] = 32'h003022A3; //  sw x3 5(x0)

//mem1[13] = 32'h00010093; // addi x1 0 (x2)
//mem1[14] = 32'h00108113; //   addi x2 1(x1)
//mem1[15] = 32'h003101B3; //add x3 x2 x3
mem1[16] = 32'h00302323; //  sw x3 6(x0)

//mem1[17] = 32'h00010093; // addi x1 0 (x2)
//mem1[18] = 32'h00108113; //   addi x2 1(x1)
//mem1[19] = 32'h003101B3; //add x3 x2 x3
mem1[20] = 32'h003023A3; //  sw x3 7(x0)

//mem1[21] = 32'h00010093; // addi x1 0 (x2)
//mem1[22] = 32'h00108113; //   addi x2 1(x1)
//mem1[23] = 32'h003101B3; //add x3 x2 x3
//mem1[24] = 32'h00302423; //  sw x3 8(x0)

//mem1[25] = 32'h00010093; // addi x1 0 (x2)
//mem1[26] = 32'h00108113; //   addi x2 1(x1)
//mem1[27] = 32'h003101B3; //add x3 x2 x3
//mem1[28] = 32'h003024A3; //  sw x3 9(x0)

//mem1[29] = 32'h00010093; // addi x1 0 (x2)
//mem1[30] = 32'h00108113; //   addi x2 1(x1)
//mem1[31] = 32'h003101B3; //add x3 x2 x3
//mem1[32] = 32'h00302523; //  sw x3 10(x0)

//mem1[33] = 32'h00010093; // addi x1 0 (x2)
//mem1[34] = 32'h00108113; //   addi x2 1(x1)
//mem1[35] = 32'h003101B3; //add x3 x2 x3
//mem1[36] = 32'h003025A3; //  sw x3 11(x0)



//mem1[37] = 32'h00202303; //lw x7 2( x0)
//mem1[38] = 32'h00302303; //lw x7 3( x0)
//mem1[39] = 32'h00402383; //lw x7 4( x0)
//mem1[40] = 32'h00502383; //lw x7 5( x0)
//mem1[41] = 32'h00602383; //lw x7 6( x0)
//mem1[42] = 32'h00702383; //lw x7 7( x0)
//mem1[43] = 32'h00802383; //lw x7 8( x0)
mem1[44] = 32'h00902383; //lw x7 9( x0)
mem1[45] = 32'h00A02383; //lw x7 10( x0)
mem1[46] = 32'h00B02383; //lw x7 11( x0)


mem1[47] = 32'hFE420AE3; //beq x8 x9 mem1[37]

end
assign RD = mem1[PC];
endmodule
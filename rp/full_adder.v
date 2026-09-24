//Full Adder Module

module full_adder(
input A,B,Cin,                  // Input A,B Cin
output sum, carry);             // Output Sum & Carry

assign sum=A ^ B ^ Cin;
assign carry=A & B | B & Cin | A & Cin;

endmodule

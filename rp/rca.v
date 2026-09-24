//Ripple Carry Adder Module

module rca#(
parameter WIDTH=8)(         // Width of the Data in Bits
input[(WIDTH-1):0] A,B,     // Input A and B
input Cin,                  // Carri Input
output[(WIDTH-1):0] SUM,    // Output SUM
output Cout);               // Final Carry Output

wire[WIDTH:0] carry;        // Internal Carry

assign carry[0]=Cin;
assign Cout= carry[WIDTH];

genvar i;
generate
	for(i=0; i<WIDTH; i=i+1) begin
	full_adder FA(.A(A[i]), .B(B[i]), .Cin(carry[i]), .sum(SUM[i]), .carry(carry[i+1]));
end
endgenerate
endmodule





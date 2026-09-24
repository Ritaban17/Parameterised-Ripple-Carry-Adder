//Testbench For Ripple Carry Adder Module

module rca_tb;
parameter WIDTH=8;           // Declearation of Bit Width

reg[(WIDTH-1):0] A,B;        // Input A and B
reg Cin;                     // Carry Input
reg Cout;                    // Final Carry Output
reg[(WIDTH-1):0] SUM;        // Final Sum 

rca uut(.A(A), .B(B), .Cin(Cin), .SUM(SUM), .Cout(Cout));

initial begin
$display(" *************** Verification Started  **************");
$display("--------------------------------------------------------------");
$monitor("A=%h | B=%h | Cin=%h -----> SUM=%h | Cout=%h",A,B,Cin,SUM,Cout);     // Display for Simulation
$dumpfile("rca.vcd");                                                          // Dumpfile creation for wave analysis
$dumpvars();
end

initial begin                                                                  // Test cases
	A=8'd285; B=8'd 356;
$display("------------------------------------------------------------------------------------------------");	
	#5 A=8'd415; B=8'd 300;
$display("------------------------------------------------------------------------------------------------");	
	#5 A=8'd155; B=8'd 365;
$display("------------------------------------------------------------------------------------------------");	
	#5 A=8'd710; B=8'd 395;
$display("------------------------------------------------------------------------------------------------");
	#10; $finish;                                                           // End Of Simulation

$display("***************** Verification Finished  *****************");


	
end
endmodule

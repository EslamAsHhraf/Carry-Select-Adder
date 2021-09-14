module CarrySelectAdder_Test_benc();
reg [15:0]A;
reg [15:0]B;
reg cin;
wire [15:0]sum;
wire cout;
csa test(
.A(A),
.B(B),
.cin(cin),
.cout(cout),
.sum(sum)
);
 
initial
begin
$monitor("%b +  %b  =  %b%b ",A,B,cout,sum);

A=16'b1111_0000_0000_1111;
cin=1'b0;
B=16'b0000_1111_1111_0000;
#10
A=16'b1111_0000_1111_1111;

B=16'b1111_0000_0000_1111;
#10
A=16'b0000_1000_1111_1111;

B=16'b0000_1000_0000_1111;
#10
A=16'b0000_1000_0000_1001;

B=16'b0000_1000_0000_1101;
#10
A=16'b0100_1001_0100_1001;

B=16'b0100_1001_0100_1101;
#10
A=16'b0000_1001_0000_1001;
B=16'b0100_1001_0100_1101;
#10
A=16'b0010_1001_0100_1011;
B=16'b0100_1001_0100_1101;
#10
A=16'b0110_1101_0101_1001;
B=16'b0100_1001_0100_1001;
#10 $finish;


end
endmodule
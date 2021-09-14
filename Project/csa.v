module csa(
input [15:0]A,
input [15:0]B,
input cin,
output reg cout,
output reg [15:0]sum
);
wire temp;
genvar  i;
//cout=0;
//assign{cout,sum[3:0]}=A[3:0]+B[3:0]+cin;

assign{temp,sum[3:0]}= A[3:0]+B[3:0]+cin;
//assign temp=cout;
assign{tem,sum[7:4]}=(temp===1'b0)?
A[7:4]+B[7:4]+1'b0 :  A[7:4]+B[7:4]+1'b1;
//assign temp=cout;
assign{te,sum[11:8]}=(tem===1'b0)?
A[11:8]+B[11:8]+1'b0 :  A[11:8]+B[11:8]+1'b1;
//assign temp=cout;
assign{cout,sum[15:12]}=(te===1'b0)?
A[15:12]+B[15:12]+1'b0 :  A[15:12]+B[15:12]+1'b1;

//assign cin=cout; 
//always @(A or B or cin)
  //begin 
//assign sum = A ^ B ^ cin; 
//assign cout = A&B | (A^B) & cin;
//end
//assign{sum,cin}= (A+B+0);//:(A[3:0]+B[3:0]+1);
//(cin===1'b0)?
// assign{sum[i+4:i],cout}=(A[i+4:i]+B[i+4:i]+1);
//=A[i+4:i]+B[i+4:i]+0;
//1:{sum[i+4:i],cout}=A[i+4:i]+B[i+4:i]+1
//end

endmodule




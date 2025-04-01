
////1////
module encoder(input [7:0] i, output [2:0] y);
  assign y= (i==8'b1<<0)? 3'b0:
            (i==8'b1<<1)? 3'd1:
            (i==8'b1<<2)? 3'd2:
            (i==8'b1<<3)? 3'd3:
            (i==8'b1<<4)? 3'd4:
            (i==8'b1<<5)? 3'd5:
            (i==8'b1<<6)? 3'd6:
            (i==8'b1<<7)? 3'd7:3'bxxx;
endmodule

//////2/////
module encoder(input [7:0] i, output [2:0] y);
  assign y= (i[0])?3'b0:
            (i[1])?3'd1:
            (i[2])?3'd2:
            (i[3])?3'd3:
            (i[4])?3'd4:
            (i[5])?3'd5:
            (i[6])?3'd6:
            (i[7])?3'd7:3'bxxx;
endmodule

/////3//////
module encoder (input [7:0]i, output [2:0]y);
  wire w1,w2,w3;
  or(w1,i[4],i[5],i[6],i[7]);
  or(w2,i[2],i[3],i[6],i[7]);
  or(w3,i[1],i[3],i[5],i[7]);
  assign y={w1,w2,w3};
endmodule

//////4////
module encoder1024to10(input [1023:0]i, output reg [9:0]y);
integer i;
  always@(*)begin
    y=10'bxxxx_xxxx;
    for(j=0;j<1024;j=j+1)begin
      if(i[j])begin
        y=j;
      end
    end
  end
endmodule




  

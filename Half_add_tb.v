module ha_tb;
  reg ta, tb;
  wire ts, tc;
  integer i;
  halfadd had(.a(ta), .b(tb), .s(ts), .c(tc));
  initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #50 $finish;
  end
  initial
    begin
      $monitor (ta, tb, ts, tc);
      for (i=0; i<4; i=i+1)
        begin
        {ta, tb} = i;
        #10;
        end
    end
endmodule

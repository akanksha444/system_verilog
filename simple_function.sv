module tb;
  function void add1(input bit[3:0]a, b, output bit[4:0] y);
    $display("A function can have output as an argument and return void");
  	y= a+b;
  endfunction
  
  function bit[4:0] add2(input bit[3:0]a, b);
    $display("// #10;");
    $display("ERROR VCP2812 \"The \"\"add2\"\" function cannot contain time-controlled statements.\"");
    return (a+b);
  endfunction
  
  bit [4:0] result1 = 0;
  bit [4:0] result2 = 0;
  
  initial begin
    $display("____________________________________________");
    add1(5,7,result1);
    $display("add1(5,7)=%0d",result1);
    
    result2 = add2(5,7);
    $display("add2(5,7)=%0d",result2);
    $display("____________________________________________");
  end      
endmodule

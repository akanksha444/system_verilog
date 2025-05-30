module test;
  int a = 33;
  int b = 77;
  int c = 555;
  int d = 999;
  
  task swap_pass_by_value(int a, int b);
    int temp;
    temp = a;
    a = b;
    b = temp;
  endtask

  task automatic swap_pass_by_ref(ref int a, ref int b);
    int temp;
    temp = a;
    a = b;
    b = temp;
  endtask

  function void display(input string message);
    $display("---------------------------------");
    $display(message);
    $display("---------------------------------");
    $display("variables for swap_pass_by_value");
    $display("a:%0d, b: %0d", a,b);
    $display("variables for swap_pass_by_ref");
    $display("c: %0d, d: %0d", c,d);
  endfunction
  
  initial begin
    display("Values before swap");
    swap_pass_by_value(a, b);
    swap_pass_by_ref(c, d);
    display("Values after swap");
  end 
endmodule

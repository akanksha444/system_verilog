module tb;
  task x2(input bit[3:0] a, output bit[6:0] y);
    y = 2*a;
  endtask
  
  bit[3:0] a,b;
  bit[4:0] y;
  bit[6:0] result_x2;
  
  task add();
    y = a+b;
    $display("a: %0d + b: %0d = c: %0d", a, b, y);
  endtask
  
  task sim_1;
    $display("\nExecuting task without arguments:");
    $display("For this the variables must be defined before function definition");
    a=1;
    b=2;
    add();
    #10;
    
    a=5;
    b=6;
    add();
    #10;
    
    a=9;
    b=12;
    add();
    #10;
    
  endtask
  
 task sim_2;
    $display("Executing task with arguments:");
    a=1;
   	x2(a,result_x2);
  	$display("2x of %0d is %0d", a, result_x2);
    #10;
    
    a=5;
   	x2(a,result_x2);
  	$display("2x of %0d is %0d", a, result_x2);
    #10;
    
    a=9;
   	x2(a,result_x2);
  	$display("2x of %0d is %0d", a, result_x2);
    #10;
  endtask
  
  
  initial begin
    $display("________________________________________________");
    sim_1();
    sim_2();
    $display("________________________________________________");
  end
  
endmodule

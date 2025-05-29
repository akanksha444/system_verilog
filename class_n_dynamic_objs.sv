/*
module top(
	input a,b
  	output y);
  reg temp;
  assign y = a&b;
endmodule 

module top2(
  input c,d,
  output y);
  
  top dut(.a(c), .b(d), .y(y)); //instantiating module top inside module top2
  ...
endmodule
*/

/// The above is a module.
/// It is used to model physical hardware.
/// Therefore, it needs to be static in nature,
/// which means it is always present once created.
///
/// This static nature is necessary for describing hardware,
/// but it is not suitable or sustainable for writing testbench programs.
/// As a result, OOP-based dynamic testbenches were introduced and are now widely used.

class test;
  int a,b;
  bit[11:0] y;
endclass : test

module tb;
  test t1;
  initial begin
    $display("-----------------------------------------------------------------");
    
    $display("\n(Before Instantiation) t1(handle value): %0d", t1);
    $display("(Before Instantiation) t1(content value): %0p", t1);
    $display("Instantiating 't1' an object of test");
    t1 = new();
    $display("\n(After Instantiation) t1(handle value): %0d", t1);
    $display("(After Instantiation) t1(content value): %0p", t1);
    
    $display("\nAssigning values to data members, a=5, b=2, y=a+b(7)");
    t1.a = 5;
    t1.b = 2;
    t1.y = t1.a + t1.b; 
    
  	$display("t1: %0p", t1);
    
    $display("\nDeassigning the handle to 'null'");
    $display("t1 = null;");
    $display("Essentially deleting the object");
    t1 = null;
    
    
    $display("\nt1: %0p", t1);  
    $display("We can no more access the members of the object");
    $display("//t1.a = 5\t<- this will throw RUN TIME ERROR");
    $display("Fatal Error: RUNTIME_0029 testbench.sv (45): Null pointer access.");
  	//t1.a = 5;  
  	$display("-----------------------------------------------------------------");
  end
endmodule

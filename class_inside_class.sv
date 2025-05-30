//class inside a class

class inner;
  int data = 22;
  
  task display();
    $display("Data: %0d", data);
  endtask
endclass

class outer;
  inner inner_h;
  
  function new();
    inner_h = new();
  endfunction
endclass

module test;
  outer outer_h;
  initial begin
    $display("-----------------------------------------------");
    outer_h = new();
  	$display("Accessing the inner class data member through the outer class handle");
 	 outer_h.inner_h.display();
    $display("\nChanging the inner class data member value through the outer class handle to 555");
 	 outer_h.inner_h.data = 555;
 	 outer_h.inner_h.display();
    $display("-----------------------------------------------");
  end
endmodule

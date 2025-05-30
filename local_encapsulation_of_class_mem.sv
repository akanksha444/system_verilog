//class inside a class

class inner;
  local int data = 22;
  
  task display(input string message);
    $display(message);
    $display("Inside DISPLAY method");
    $display("Data: %0d", data);
  endtask : display
  
  task set(input int new_data);
    $display("\nInside SET method");
    data = new_data;
  endtask : set
  
  function int get();
    $display("Inside GET method");
    return data;
  endfunction : get
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
    $display("If the local or protected data member is accessed, we get the following error: ");
    $display("<<ERROR VCP5248 \"Cannot access local/protected member \"\"outer_h.inner_h.data\"\" from this scope.\">>");
   
    $display("\nThe only way to access the local members is by using methods");
    
    outer_h.inner_h.display("\nInitial Value");
    
    outer_h.inner_h.set(56);
    $display("New value set though .set() method");
    
    $display("\nRetrieving data value though .get() method");
    $display("Data: %0d", outer_h.inner_h.get());
    
    $display("-----------------------------------------------");
  end
endmodule

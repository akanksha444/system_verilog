class first;
  int data;
  int address;
  
  function first copy();
    copy = new();
    copy.data = this.data;
    copy.address = this.address;
    //object is created and the handle is retured
    return copy;
  endfunction
endclass : first

module test;
  first obj1, obj2;
  initial begin
    $display("----------------------------------------");
    $display("Two object handles created");
    $display("\tobj1: %0p", obj1);
    $display("\tobj2: %0p", obj2);
	
    $display("\nInstantiating obj1");
    obj1 = new();
    obj1.data = 11;
    obj1.address = 1111;
    $display("\tobj1: %0p", obj1);
    $display("\tobj2: %0p", obj2);
	
    $display("\nInstantiating obj2 and copying using .copy() method");
    obj2 = obj1.copy();
    $display("\tobj1: %0p", obj1);
    $display("\tobj2: %0p", obj2);
	
    $display("\nUpdating the data and address members of obj2");
    obj2.data = 22;
    obj2.address = 2222;
    $display("\tobj1: %0p", obj1);
    $display("\tobj2: %0p", obj2);
    
    $display("\nInference:");
    $display("Custom copy was successful. The data members were updated without affecting the others");
    $display("----------------------------------------");
  end
endmodule : test

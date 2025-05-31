//shallow copy when class inside class

class first;
  int fir_mem1;
  int fir_mem2;
endclass : first

class second;
  int sec_mem1;
  int sec_mem2;
  first first_obj;
  
  function new();
    first_obj = new();
  endfunction
  
  function void display(input string message);
    $display("------------------------------------------");
    $display(message);
    $display("------------------------------------------");
    $display("sec_mem1: %0d", sec_mem1);
    $display("sec_mem2: %0d", sec_mem2);
    $display("first_obj: %0d", first_obj);
    $display("first_obj.fir_mem1: %0d", first_obj.fir_mem1);
    $display("first_obj.fir_mem2: %0d", first_obj.fir_mem2);
    $display("------------------------------------------");
  endfunction
endclass: second

module main;
  second second_obj1, second_obj2;
  initial begin
    $display("**************************************************");
    $display("second_obj1 and second_obj2 handles created");
    $display("second_obj1: %0p, second_obj2: %0p",second_obj1, second_obj2);
    
    second_obj1 = new();
    second_obj2 = new();
    $display("\nsecond_obj1&2 instantiated");
    second_obj1.display("second_obj1");
    second_obj2.display("second_obj2");
      
    second_obj1.sec_mem1 = 11;
    second_obj1.sec_mem2 = 22;
    second_obj1.first_obj.fir_mem1 = 33;
    second_obj1.first_obj.fir_mem2 = 44;
    
    $display("\nInitialized second_obj1");
    second_obj1.display("second_obj1");
    
    $display("\nShallow copy second_obj1 to second_obj2");
    second_obj2 = new second_obj1;
    second_obj2.display("second_obj2");
    
    $display("\nFor copy to be successful, the copied must not alter the original data");
    second_obj2.sec_mem1 = 999;
    second_obj2.sec_mem2 = 777;
    second_obj2.first_obj.fir_mem1 = 888;
    second_obj2.first_obj.fir_mem2 = 666;
    second_obj1.display("second_obj1");
    second_obj2.display("second_obj2");
    $display("****************Inference************************");
    $display("first_obj is a handle. It stores the value of the pointer");
    $display("Shallow copy only copies the handle of the object, not the object itself");
    $display("Therefore any changes made using the handle will reflect in both the copies");
    $display("This is not an ideal copy. This is thus the draw of ");
    $display("**************************************************");
  end
endmodule

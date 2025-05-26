module test;
  int queue_arr[$];
  int popped;
  
  initial begin
    //initializing queue array
    //notice that we do not use the aphostrophe here unlike fixed or queue array
    queue_arr = {1,2,3};
    $display("queue array: %0p",queue_arr);
    
    $display("Pushing numeral '0' from the front");
    queue_arr.push_front(0);
    $display("queue array: %0p",queue_arr);
    
    $display("Pushing numeral '5' from the back");
    queue_arr.push_back(5);
    $display("queue array: %0p",queue_arr);
    
    $display("Inserting numeral '4' at position '4'");
    queue_arr.insert(4,4);
    $display("queue array: %0p",queue_arr);
    
    $display("Pushing numeral '0' from the front");
    queue_arr.push_front(0);
    $display("queue array: %0p",queue_arr);
    
    $display("Pop numeral from the front");
    popped = queue_arr.pop_front();
    $display("Popped element: %0d",popped);
    $display("queue array: %0p",queue_arr);
    
    $display("Pop numeral from the back");
    popped = queue_arr.pop_back();
    $display("Popped element: %0d",popped);
    $display("queue array: %0p",queue_arr);
  end
endmodule

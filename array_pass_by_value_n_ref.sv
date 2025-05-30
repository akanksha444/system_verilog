module test;
  int arr[5];
  
  function automatic void x2(ref int arr[5]);
    for(int i=0;i<$size(arr);i++)begin
      arr[i] = arr[i]*2;
    end
    $display(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    $display("| Inside x2: passing with ref			|");
    $display("| arr:%0p				|", arr);
    $display(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  endfunction
  
  function void x2_wo_ref(int arr[5]);
    for(int i=0;i<$size(arr);i++)begin
      arr[i] = arr[i]*2;
    end
    $display(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    $display("| Inside x2_wo_ref: passing without ref	|");
    $display("| arr:%0p				|", arr);
    $display(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  endfunction
    
  function void display(input string message);
    $display("------------------------------------------------");
    $display(message);
    $display("arr: %0p", arr);
    $display("------------------------------------------------");
  endfunction
  
  initial begin
    arr = {1,2,3,4,5};
    display("Initial value");
    x2_wo_ref(arr);
    display("Passing Without Ref");
    x2(arr);
    display("Passing with Ref");
  end
endmodule

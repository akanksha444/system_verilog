//repetitive operation in array

module test;
  int arr1[10];
  int arr2[15];
  int arr3[3];
  initial begin
    $display("_____________________________________________");
    $display("arr1: %0p", arr1);
    $display("Initializing arr1 using for loop");
    for(int i=0;i<$size(arr1);i++)begin
      arr1[i] = i;
      $display("Inside for loop :: arr1[%0d]:%0d",i,arr1[i]);
    end
    $display("(after initialization | arr1: %0p", arr1);
    
    $display("_____________________________________________");
    $display("arr2: %0p", arr2);
    $display("Initializing arr2 using foreach loop");
    foreach(arr2[j])begin
      arr2[j] = j*2;
      $display("Inside foreach loop :: arr2[%0d]:%0d",j,arr2[j]);
    end
    $display("(after initialization | arr2: %0p", arr2);
  
    $display("_____________________________________________");
    $display("arr3: %0p", arr3);
    $display("Initializing arr3 using repeat loop");
    foreach(arr3[l])begin
      arr3[l] = l*5;
      $display("Inside repeat loop :: arr3[%0d]:%0d",l,arr3[l]);
    end
    $display("(after initialization | arr3: %0p", arr3);
    $display("_____________________________________________");
  end
endmodule : test

//copy and compare arrays
module test;
  int arr1[5];
  int arr2[5];
  shortint arr3[5];
  int arr4[7];
  bit comparision_status;
  
  initial begin
    $display("Initializing arr1");
    for(int i=0;i<$size(arr1);i++)begin
      arr1[i] = i*5;
    end
    $display("initialized arr1: %p", arr1);
    $display("Copying arr1 to arr2");
    $display("The two arrays are of the same size and type");
    arr2 = arr1;
    $display("arr2: %p",arr2);
    $display("----------------------------");
    
    // arr3 = arr2; // Error: "Incompatible types at assignment"
    
    // arr4 = arr2; // Error: "Incompatible types at assignment" "arrray sizes are different"
    //////////////////////////////////////////////////////////////////////////////
    /////////////For copying the arrays must be of same size and type/////////////
    //////////////////////////////////////////////////////////////////////////////

    comparision_status = (arr1==arr2);
    $display("Comparision status for arr1 and arr2: %0b",comparision_status);    
    if(comparision_status)
      $display("This means the two arrays are equal");
    else
      $display("This means the two arrays are unequal");	
    $display("----------------------------");

  end
endmodule

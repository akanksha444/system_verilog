//copying the array
module test;
  int arr1[5];
  int arr2[5];
  int arr3[7];
  bit arr4[32*5];
  bit comparision_status=0;
  
  initial begin
    $display("___________Copy Operation________________________");
    $display("Initial values");
    $display("arr1:\tsize:%0d\t%0p",$size(arr1),arr1);
    $display("arr2:\tsize:%0d\t%0p",$size(arr2),arr2);
    $display("arr3:\tsize:%0d\t%0p",$size(arr3),arr3);
    $display("arr4:\tsize:%0d\t%0p",$size(arr4),arr4);
    
    $display("\nInitializing arr2");
    foreach(arr2[i]) arr2[i] = 2*i;
    $display("arr2:%0p",arr2);
    
    $display("\nCopying arr2 to arr1");
    arr1 = arr2;
    $display("arr1:\tsize:%0d\t%0p",$size(arr1),arr1);
    
    $display("\nCopying arr2 to arr3");
    //arr3 = arr2;
    $display(" //arr3 = arr2; ");
    $display("This produces compile error");
    $display("ERROR VCP2852 \"Incompatible types at assignment: .arr3<int$[0:6]> <- arr2<int$[0:4]>.");
    
    $display("\nCopying arr2 to arr4");
    //arr4 = arr2;
    $display(" //arr4 = arr2; ");
    $display("This produces compile error");
    $display("ERROR VCP2852 \"Incompatible types at assignment: .arr4<bit$[0:159]> <- arr2<int$[0:4]>.");
    
    
    $display("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"); 
    $display("Inference:");
    $display("For successful copy, the two array must be of the same size and type");
    $display("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    
    
    $display("\n\n___________Compare Operation________________________");
    foreach(arr3[i]) arr3[i] = 3*i;
    $display("Initial values");
    $display("arr1:\tsize:%0d\t%0p",$size(arr1),arr1);
    $display("arr2:\tsize:%0d\t%0p",$size(arr2),arr2);
    $display("arr3:\tsize:%0d\t%0p",$size(arr3),arr3);
    
    comparision_status = (arr1==arr2);
    $display("\nComparision status for arr1 and arr2: %0b",comparision_status);    
    if(comparision_status)
      $display("This means the two arrays are equal");
    else
      $display("This means the two arrays are unequal");
    
    
    $display("\nAssigning new values to arr2");
    foreach(arr2[i]) arr2[i] = i;
    $display("New values");
    $display("arr1:\tsize:%0d\t%0p",$size(arr1),arr1);
    $display("arr2:\tsize:%0d\t%0p",$size(arr2),arr2);
    
    comparision_status = (arr1==arr2);
    $display("\nComparision status for arr1 and arr2: %0b",comparision_status);    
    if(comparision_status)
      $display("This means the two arrays are equal");
    else
      $display("This means the two arrays are unequal");
   
    //comparision_status = (arr1==arr3);
    $display("\nComparision status for arr1 and arr3: ");    
    $display("//comparision_status = (arr1==arr3)");
    $display("This produces compile error");
    $display("ERROR VCP2999 \"Incompatible operand types of == operator: arr1<int$[0:4]> == arr3<int$[0:6]>.");
    
    //comparision_status = (arr1==arr4);
    $display("\nComparision status for arr1 and arr4: ");    
    $display("//comparision_status = (arr1==arr4)");
    $display("This produces compile error");
    $display("ERROR VCP2999 \"Incompatible operand types of == operator: arr1<int$[0:4]> == arr4<bit$[0:159]>.");
    
             $display("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"); 
    $display("Inference:");
    $display("For legal comparision, the two array must be of the same size and type");
    $display("Two arrays are said to be equal if all their values match");
    $display("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    
    $display("\n------------------------------------------------------------------------");
  end
endmodule : test

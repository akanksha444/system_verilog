module test;
  
  //In order for an identifier to represent a dynamic arry, it needs to be declared with the dynamic array as the left most unpakced dimn
  int fixed_dynam_array[3][];
  //the indiviual elements of the fixed arr is made of dynamic array;  
  int dyn_array1[],dyn_array2[],dyn_array3[];
  initial begin
    $display("****************************************************************");
    $display("Fixed_dynam_array before initializing: %0p", fixed_dynam_array);
    
    //their size is set at run time
    //new constructor is used to set the size
    $display("Initializing the array with size 3,4,5 respectively");
    for(int i=0; i<$size(fixed_dynam_array);i++)begin
      //The new constructor sets the size of a dynamic array and initializes its elements to their default value
      fixed_dynam_array[i] = new[i+3];
    end
    $display("Fixed_dynam_array after instantiating");    
    $display("fixed_dynam_array:%0p", fixed_dynam_array); 
    
    $display("Initializing the array");
    for(int i=0; i<$size(fixed_dynam_array);i++)begin
      //The size() built-in method returns the current size of the array
      for(int j=0; j< fixed_dynam_array[i].size(); j++)begin
        fixed_dynam_array[i][j] = 3*i+j;
      end
    end
    $display("Fixed_dynam_array after initializing");      
    $display("fixed_dynam_array:%0p", fixed_dynam_array);
    
       
    $display("Copying and deleting the array");
    $display("Dynamic arrays to copy");
    $display("dyn_array1: %0p",dyn_array1);
    $display("dyn_array2: %0p",dyn_array2);
    $display("dyn_array3: %0p",dyn_array3);
    for(int i=($size(fixed_dynam_array))-1; i>=0;i--)begin
      if(i ==0)begin
        $display("$size(fixed_dynam_array[%0d]): %0d",i,fixed_dynam_array[i].size());
        dyn_array1 = new[5];
        dyn_array1  = fixed_dynam_array[i];    
    	//The delete() built-in method clears all the elements yielding an empty array
        fixed_dynam_array[i].delete();
      end
      if(i == 1)begin
        $display("$size(fixed_dynam_array[%0d]): %0d",i,fixed_dynam_array[i].size());
        dyn_array2 = new[$size(fixed_dynam_array[i])];
        dyn_array2  = fixed_dynam_array[i];    
    	//The delete() built-in method clears all the elements yielding an empty array
        fixed_dynam_array[i].delete();
      end
      if(i == 2)begin
        $display("$size(fixed_dynam_array[%0d]): %0d",i,fixed_dynam_array[i].size());
        dyn_array3 = new[$size(fixed_dynam_array[i])];
        dyn_array3  = fixed_dynam_array[i];    
    	//The delete() built-in method clears all the elements yielding an empty array
        fixed_dynam_array[i].delete();
      end
    end

    $display("Dynamic arrays after copy");
    $display("dyn_array1: %0p",dyn_array1);
    $display("dyn_array2: %0p",dyn_array2);
    $display("dyn_array3: %0p",dyn_array3);
    $display("Fixed_dynam_array after deleting");
    $display("fixed_dynam_array:%0p", fixed_dynam_array);
    $display("****************************************************************");
  end
endmodule : test

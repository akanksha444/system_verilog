/*Create a function that generate and return 32 values of multiple of 8 (0, 8, 16, 24, 32, 40 .... 248). Store this value in the local array of the testbench top and also print the value of each element of this array on the console.*/

module top;
  int mul_8[];
  function automatic void gen_x8_32(ref int arr[]);
    arr = new[32];
    for(int i=0; i<$size(arr);i++)begin
      arr[i] = i*8;
    end
  endfunction
  
  function void display();
    for(int i=0; i<$size(mul_8);i++)begin
      $display("mul_8[%0d] = %0d", i, mul_8[i]);
    end 
  endfunction 
  
  initial begin
    gen_x8_32(mul_8);
    display();
  end
endmodule : top

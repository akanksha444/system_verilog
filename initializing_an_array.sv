module array_init;
  //initialising by assigning the list of values
  int init_using_list[] = '{1,2,3,4,5};
  //initialising by using repitition operator
  int init_using_rep[] = '{3{100}};
  //initialising using default 
  int init_using_def[250] = '{default:5};
  
  initial begin
 	$display("*********************************");
    $display("array initialized using list:");
    $display("%p",init_using_list);
    $display("array initialized using repitition:");
    $display("%p",init_using_rep);
    $display("array initialized using default:");
    $display("%p",init_using_def);
    $display("*********************************");
  end
endmodule

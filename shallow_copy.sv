class test;
	int a;
  	string name;
  function new(input string name);
		this.name = name;
    endfunction
endclass

module main;
  test org, shallow_copy;
  
  initial begin
    $display("----------------------------------------------------------------------------------------------------");
    org = new("org");	
    org.a = 100;
    
    $display("Original object 'org':\n\t%0p",org);
    
    shallow_copy = new org;
    $display("Copying the original object to'shallow_copy':\n\t%0p",shallow_copy);
    
    $display("\nChanging the 'shallow_copy.name' to shallow_copy");
    shallow_copy.name = "shallow_copy";
    
    $display("\nDisplaying the original and shallow_copy objects");
    $display("Original object 'org':\n\t%0p",org);
    $display("Shallow_copy object 'shallow_copy':\n\t%0p",shallow_copy);
    
    $display("\nInference:");
    $display("Shallow copy was successful. Changing the shallow_copy object did not corrupt the original data");         
    $display("----------------------------------------------------------------------------------------------------");
  end
endmodule

  

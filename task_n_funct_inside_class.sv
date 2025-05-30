/*
Assume class consists of three data members a, b, and c each of size 4-bit. 
Create a task inside the class that returns the result of the addition of data members. 
The task must also be capable of sending the value of a, b, c, and result to the console. Verify code for a = 1, b = 2, and c = 4.
*/

class test_class;
  
  bit[3:0] a,b,c;
  
  function new(input bit[3:0] a=1,b=2,c=4);
    this.a = a;
    this.b = b;
    this.c = c;
  endfunction
      
  task add(output bit[3:0] a,b,c, output bit[4:0] result);
    result = this.a + this.b + this.c;
    a= this.a;
    b = this.b;
    c = this.c;
  endtask : add
  
endclass

module test;
  test_class t1;
  bit[3:0] a,b,c;
  bit[4:0] result;
  
  initial begin
    t1 = new();
    t1.add(a,b,c,result);
    $display("a:%0d\tb:%0d\tc:%0d\t|\tresult:%0d",a,b,c,result);
  end
endmodule : test

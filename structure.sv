
//////////////////////////////////////////////
/////////////struct with typedef//////////////
//////////////////////////////////////////////
module struct_typed;
  typedef struct {
    	string name;
    	int age;
    	real height;
  } student;
  
  student public_speaking[3];
  
  initial begin
    public_speaking[0].name = "Akanksha";
    public_speaking[0].age = 23;
    public_speaking[0].height = 5.2;
    
    public_speaking[1].name = "Aaryan";
    public_speaking[1].age = 25;
    public_speaking[1].height = 6.1;
    
    public_speaking[2].name = "Pushpa";
    public_speaking[2].age = 32;
    public_speaking[2].height = 5.6;
    
    $display("****************************");
    $display("Student information");
    for(int i=0; i<$size(public_speaking);i++) begin
      $display("%p",public_speaking[i]);
    end
    $display("****************************");
  end  
endmodule : struct_typed

//////////////////////////////////////////////
///////////struct without typedef/////////////
//////////////////////////////////////////////
/*
module structure;
  //structures are collection of datatypes that can be referenced as a whole (eg as student_info)
  struct {
      string name;
      int age;
      real height;
  } student_info;
  
  initial begin
    //the individual datatype that makeup the structure can be referenced by name
    student_info.name = "Akanksha";
    student_info.age = 23;
    student_info.height = 5.2;
    $display("***********************");;
    $display("Displaying the student info");
    $display("%p",student_info);
    $display("***********************");;
  end
endmodule : structure
*/ 

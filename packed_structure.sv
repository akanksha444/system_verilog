//////////////////////////////////////////////
////////////////packed struct/////////////////
//////////////////////////////////////////////

module struct_typed;
//a packed structure is a mechanism for subdiving a vector into subfields, which can be conveniently accessed as members*  
  struct packed{
    //the members can be initialized
    shortint day = 16'h0000;
    shortint month = 16'h0000;
    shortint year = 16'h0000;
  } dob;
    
  initial begin
    //the first member specified is the most significant*
  	dob = {16'd13,16'd02,16'd2002}; //13th Feb 2002
    $display("*****************************");
    //which can be conveniently accessed as members*  
    $display("Day of Birth: %0d", dob.day);
    $display("Month of Birth: %0d", dob.month);
    $display("Year of Birth: %0d", dob.year); 
    //a packed structure consist of bit fields which are packed together in memory without gaps
    //the first member specified is the most significant*
    $display("\ndob bit stream: %b",dob);
    $display("*****************************");
  end
  
endmodule : struct_typed

////////////////////////////////////////////////////////////////////////////
////////////////////legal datatypes in a packed structure///////////////////
////////////////////////////////////////////////////////////////////////////
//     Shortint    //             2-state , 16 bit signed                 //
//        int      //             2-state , 32 bit signed                 //
//     longint     //             2-state , 64 bit signed                 //
//       byte      //             2-state , 8 bit signed                  //
//        bit      //             2-state , scalar, unsigned              //
//       logic     //             4-state , scalar, unsigned              //
//       reg       //             4-state , scalar, unsigned              //
//     integer     //             4-state , 32 bit signed                 //
//       time      //             4-state , 64 bit unsigned               //    
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
//if there are any 4 state data type, then the entire will be defaulted to//
//4-state data type                                                       //
////////////////////////////////////////////////////////////////////////////

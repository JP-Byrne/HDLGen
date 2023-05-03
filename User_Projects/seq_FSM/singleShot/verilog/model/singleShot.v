/* 
   Header section
   Generated by HDLGen, Github https://github.com/abishek-bupathi/HDLGen
   Reference: https://tinyurl.com/VerilogTips 
      
   Component Name : singleShot
   Title          : 2-to-1 mux, 1-bit data
*/

/*
   Description
   sel is datapath control signal
   muxOut = muxIn0 when sel  = 0
   muxOut = muxIn1 when sel  = 1 

   Author(s)      : Fearghal Morgan
   Company        : University of Galway
   Email          : fearghal.morgan@universityofgalway.ie
   Date           : 13/3/2023
*/

/*
   module signal dictionary
   clk  System clock strobe
   rst  Asynchronous reset signal, asserted h 
   sw	to be completed
   aShot	to be completed
*/

/* 
  internal signal dictionary
  NS	next state 
  CS	current state
*/

// FM No library declarations required //

// module declaration
module singleShot(
		clk,
		rst,
		sw,
		aShot
	);

// <FM> outdent port definitions to left margin
// Port definitions
input  clk;
input  rst;
input  sw;

output  aShot;
reg  aShot;

// <FM if finite state machine CS/ND type model, include this, assigning binary values to the state names>
parameter waitFor1 = 1'b0;
parameter waitFor0 = 1'b1;

// Internal signal declarations
reg  NS;
reg  CS;

// FM No architecture statement required 

/* Internal signal declarations
   None
*/

// <FM> don't include any reference to component declarations in Verilog
// <FM> No architecture begin statement required 

// NSAndOPDecode always statement
    always @(sw or CS)
    begin : NSAndOPDecode_a
    // Complete the process if required and delete this comment
    	aShot = 1'b0; // default assignment
    	NS = CS; // default assignment
		case ( CS )
			waitFor1:
				begin
				if (sw) 
				begin
					aShot = 1'b1;
					NS = waitFor0;    		         
				end 
				end
			waitFor0:
				begin
				if (sw == 1'b0) 
				begin
					aShot = 1'b0;
					NS = waitFor1;
				end 
				end
			default :
				begin
				aShot = 1'b0;
				NS = CS; 
				end
		endcase
    end

// stateReg always statement
    always @(posedge clk or posedge rst )
    begin : stateReg_a
    // Complete the process if required and delete this comment
    	if ( rst )
    		begin
				CS <= waitFor0;
    		end
    	else
    		begin
				CS <= NS;
    		end
    end

endmodule
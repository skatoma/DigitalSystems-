
module fsm_moore (input logic clk, reset, X, RDY, output logic Q, START);

typedef enum int unsigned { S0 = 1, S1 = 2, S2 = 3,S3=4,S4=5,S5=6 } state_t;
state_t state, next_state;

always_comb begin : next_state_logic

   //Default is to stay in the current state
   next_state = state;

   //Conditionally update state
   case(state)

   S0:   if (X == '1)
            next_state = S1;

   S1:   next_state = S2;

   S2:   if (RDY == '1)
            next_state = S3;
				
	S3:   if (X == '0)
            next_state = S4;
				
	S4:    next_state = S5;
	
	S5:   if (RDY == '1)
            next_state = S0;			
   default:
         next_state = S0;

   endcase
end

always_ff @(posedge clk or negedge reset) begin

   if (reset == '0)
      state <= S0;
   else
      state <= next_state;
end

always_comb begin : output_logic
   case(state)
   S0:   Q = 0;
	
   S1: begin
       	Q = 1;
	      START=1;
		 end	
	
   S2:   Q = 0;

	S4 : 
	     START=1; 
		 
		 
	
   default: Q = 0;
   endcase
end

endmodule
//
//module fsm_moore (input logic clk, reset, X, RDY, output logic Q, START);
//
//typedef enum int unsigned { S0 = 1, S1 = 2, S2 = 3,S3=4,S4=5,S5=6 } state_t;
//state_t state, next_state;
//
//always_comb begin : next_state_logic
//
//   //Default is to stay in the current state
//   next_state = state;
//
//   //Conditionally update state
//   case(state)
//
//   S0:   if (X == '1)
//            next_state = S1;
//
//   S1:   next_state = S2;
//
//   S2:   if (RDY == '1)
//            next_state = S3;
//				
//	S3:   if (X == '0)
//            next_state = S4;
//				
//	S4:    next_state = S5;
//	
//	S5:   if (RDY == '1)
//            next_state = S0;			
//   default:
//         next_state = S0;
//
//   endcase
//end
//
//always_ff @(posedge clk or negedge reset) begin
//
//   if (reset == '0)
//      state <= S0;
//   else
//      state <= next_state;
//end
//
//always begin : output_logic
//   case(state)
//   S0:   Q = 0;
//	
//   S1: begin
//       	Q = 1;
//	      START=1;
//		 end	
//	
//   S2:   Q = 0;
//
//	S4 : 
//	     START=1; 
//		 
//		 
//	
//   default: Q = 0;
//   endcase
//end
//
//endmodule


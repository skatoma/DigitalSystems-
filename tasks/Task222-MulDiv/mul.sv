module mul #(parameter N = 4) (output logic [2*N - 1 : 0] Y, input logic [N-1:0] A, B);

	always_comb
	begin
		Y = A*B;
	end
endmodule
quartus_bdf_data
(symbol
	(rect 408 376 584 456)
	(text "mul" (rect 5 0 22 12)(font "Arial" ))
	(text "U3_HDL" (rect 8 64 46 81)(font "Intel Clear" ))
	(port
		(pt 0 32)
		(input)
		(text "A[N-1..0]" (rect 0 0 44 12)(font "Arial" ))
		(text "A[N-1..0]" (rect 21 27 65 39)(font "Arial" ))
		(line (pt 0 32)(pt 16 32)(line_width 3))
	)
	(port
		(pt 0 48)
		(input)
		(text "B[N-1..0]" (rect 0 0 44 12)(font "Arial" ))
		(text "B[N-1..0]" (rect 21 43 65 55)(font "Arial" ))
		(line (pt 0 48)(pt 16 48)(line_width 3))
	)
	(port
		(pt 176 32)
		(output)
		(text "Y[2*N-1..0]" (rect 0 0 56 12)(font "Arial" ))
		(text "Y[2*N-1..0]" (rect 108 27 164 39)(font "Arial" ))
		(line (pt 176 32)(pt 160 32)(line_width 3))
	)
	(parameter
		"N"
		"8"
		""
		(type "PARAMETER_SIGNED_DEC")	)
	(drawing
		(rectangle (rect 16 16 160 64))
	)
	(annotation_block (parameter)(rect 416 472 585 510))
)
quartus_bdf_data
(symbol
	(rect 408 376 584 456)
	(text "mul" (rect 5 0 22 12)(font "Arial" ))
	(text "U3_HDL" (rect 8 64 46 81)(font "Intel Clear" ))
	(port
		(pt 0 32)
		(input)
		(text "A[N-1..0]" (rect 0 0 44 12)(font "Arial" ))
		(text "A[N-1..0]" (rect 21 27 65 39)(font "Arial" ))
		(line (pt 0 32)(pt 16 32)(line_width 3))
	)
	(port
		(pt 0 48)
		(input)
		(text "B[N-1..0]" (rect 0 0 44 12)(font "Arial" ))
		(text "B[N-1..0]" (rect 21 43 65 55)(font "Arial" ))
		(line (pt 0 48)(pt 16 48)(line_width 3))
	)
	(port
		(pt 176 32)
		(output)
		(text "Y[2*N-1..0]" (rect 0 0 56 12)(font "Arial" ))
		(text "Y[2*N-1..0]" (rect 108 27 164 39)(font "Arial" ))
		(line (pt 176 32)(pt 160 32)(line_width 3))
	)
	(parameter
		"N"
		"8"
		""
		(type "PARAMETER_SIGNED_DEC")	)
	(drawing
		(rectangle (rect 16 16 160 64))
	)
	(annotation_block (parameter)(rect 416 472 585 510))
)

module rvfi_wrapper (
	input         clock,
	input         reset,
	`RVFI_OUTPUTS
);
	(* keep *) `rvformal_rand_reg [31:0] instr;
	(* keep *) `rvformal_rand_reg [61:0] regOut;
	(* keep *) `rvformal_rand_reg [31:0] ramOut;
	(* keep *) wire               [31:0] pc;
	(* keep *) wire               [96:0] ramIn;

	VeldtFV uut (
	  .clock     (clock),
	  .reset     (reset),
    .word      (instr),
		.regOut    (regOut),
		.ramOut    (ramOut),
		.ramIn     (ramIn),
		.pc        (pc),
		`RVFI_CONN
	);

endmodule

.PAG 'CODE24'
LOGEB2	.BYT @201,@70,@252,@73,@51
EXPCON	.BYT 7,@161,@64,@130,@76
	.BYT @126,@164,@26,@176
	.BYT @263,@33,@167,@57
	.BYT @356,@343,@205,@172
	.BYT @35,@204,@34,@52
	.BYT @174,@143,@131,@130
	.BYT @12,@176,@165,@375
	.BYT @347,@306,@200,@61
	.BYT @162,@30,@20,@201
	.BYT 0,0,0,0
;
; START OF KERNAL ROM
;
EXP	LDA #<LOGEB2
	LDY #>LOGEB2
	JSR FMULT
	LDA FACOV
	ADC #@120
	BCC STOLDX
	JSR INCRND
STOLDX	JMP STOLD       ;CROSS BOUNDRIES
.END
; ############################
; 9 - RETRACTION SETTINGS
; ############################

M207 P0 S0.9 R-0.000 F2400 T2400 Z0.5

M207 ; echo the settings to the console to show they are applied

	; M207: Set retract length
	; Parameters
	; 	Snnn positive length to retract, in mm
	; 	Rnnn positive or negative additional length to un-retract, in mm, default zero
	; 	Fnnn retraction feedrate, in mm/min
	; 	Tnnn feedrate for un-retraction if different from retraction, mm/min (RepRapFirmware 1.16 and later only)
	; 	Znnn additional zlift/hop
	; Example: M207 S4.0 F2400 Z0.075

; FEEDRATE CONVERSIONS
	; 20mm/s = F1200
	; 35mm/s = F2100
	; 50mm/s = F3000
	; 70mm/s = F4200
	; 100mm/s = F6000
	; 120mm/s = F7200
	; 133mm/s = F8000
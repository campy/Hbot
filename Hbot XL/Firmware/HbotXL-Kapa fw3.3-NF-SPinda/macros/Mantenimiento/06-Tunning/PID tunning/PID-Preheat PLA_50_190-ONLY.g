; Raise temp of heated bed to 50 and nozzle to 200
;

M291 P"Setting PID and retraction values for PLA" R"Proceed?" S3 

; New values
M307 H0 A279.8 C665.7 D2.6 S1.00 V24.0 B0
M307 H1 A847.4 C279.8 D5.0 S1.00 V24.1 B0
;M572 D0 S0.05                              	  ; Presure Advance
;M592 D0 A0,0150778254174627 B0,00535173153481226  ; Linear Advance
;M593 F45                                  	  ; DAA 
T0

M140 S50			; Set bed temp to 50
M116				; Wait for temps to be reached...
G10 P0 S190			; Set extruder temp (tool 0) to 190
M116
M117 PLA Preheat complete	; and send a notice to the screen that temps have been reached
;Play a tone
M300 S1250 P200
G4 P201
M300 S1500 P200
G4 P201
M300 S1100 P200
G4 P201
M300 S950 P300
G4 P400
M300 S1175 P300
G4 S1

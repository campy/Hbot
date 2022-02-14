; =========================================================================================================
;
; Home xyz Axis
;
; for H-Bot XL by Campy3d
;
; =========================================================================================================
;

G91                                                    ; relative positioning
G1 H2 X0.5 F10000                                      ; energise motors to ensure they are not stalled
M400                                                   ; wait for current moves to finish
G4 P200                                                ; wait 200ms
;
G1 H2 Z5 F6000                                         ; lift Z relative to current position
M400                                                   ; wait for current moves to finish
;
; =========================================================================================================
; Home X Axis
; =========================================================================================================
;
G1 H1 X5 F1000						  					; move slowly away
G1 H1 X-400 F3000 										; move quickly to X axis endstop and stop there (first pass)
G1 X10 F6000       										; go back a few mm
G1 H1 X-400 F360  										; move slowly to X axis endstop once more (second pass)
G1 X10 F6000												; go back a few mm
M400														; wait for current moves to finish
G4 P200                                                		; wait 200ms
;
; =========================================================================================================
; Home Y Axis
; =========================================================================================================
;
G1 H1 Y-5 F1000						  						; move slowly away
G1 H1 Y400 F3000 											; move quickly to Y axis endstop and stop there (first pass)
G1 Y-10 F6000       											; go back a few mm
G1 H1 Y400 F360  											; move slowly to Y axis endstop once more (second pass)
G1 Y-10 F6000													; go back a few mm
M400														; wait for current moves to finish
G4 P200                                                		; wait 200ms
;
G90                                                    		; absolute positioning
;
; =========================================================================================================
; Home Z Axis
; =========================================================================================================
;
;G1 X146 Y198 F6000 											; go to first probe point
G1 X{global.midX} Y{global.midY} F6000
G30               											; home Z by probing the bed
M400                                              		    ; wait for current moves to finish
;G1 Z1.15 F360                                       	    ; move z to origin and 1.15mm above bed
;M400                                                   		; wait for current moves to finish
; =========================================================================================================
; HOMED
; =========================================================================================================

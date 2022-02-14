; =========================================================================================================
;
; stop.g
; called when M0 (Stop) is run (e.g. when a print is cancelled)
;
; =========================================================================================================
;
G91 
G1 Z5
G90
G1 X320 Y320 F9000
G10 P0 S-274 R-274       ; turn off extruder
M140 S0 R0               ; set bed temperature to 0C
M140 S-274               ; set bed temperature to 0K to turn it off
M107                     ; turn off fan
M18 XY					 ; release XY motors, allowing Z to move
;
; =========================================================================================================
;


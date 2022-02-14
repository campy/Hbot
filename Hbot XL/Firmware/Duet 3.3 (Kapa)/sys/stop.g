; =========================================================================================================
;
; stop.g
; called when M0 (Stop) is run (e.g. when a print is cancelled)
;
; =========================================================================================================
;
M83
G91 
G1 Z5 F400													; Move Z axis up 5mm
M572 D0 S0.0                                               ; Clear pressure advance.
M220 S100                                                  ; Set the speed factor back to 100% incase it was changed.
M221 S100                                                  ; Set the extrusion factor back to 100% incase it was changed.
G1 F10000
G1 E-2
; Start countdown - use X/Y as indicators of counting  
while iterations <=9                                       ; Perform 10 passes.
    G4 S6                                                  ; Wait 6 seconds.
    G1 X1 Y1 F1000                                         ; Wiggle +1mm.
    G4 S6                                                  ; Wait 6 seconds.
    G1 Z0.5 X-1 Y-1 F1000                                  ; Wiggle -1mm, Z +0.5.
G90                                                        ; Set to Absolute Positioning.
G1 X({move.axes[0].max}-15) Y({move.axes[0].max}-15) F9000
G10 P0 S-274 R-274       ; turn off extruder
M140 S0 R0               ; set bed temperature to 0C
M140 S-274               ; set bed temperature to 0K to turn it off
M107                     ; turn off fan
M18 XY					 ; release XY motors, allowing Z to move
;
; =========================================================================================================
;


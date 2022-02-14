; =========================================================================================================
;
; print prime-line
;
; =========================================================================================================
;
; play start tune
M98 P"0:/sys/playsound.g"
;
; =========================================================================================================
;
G90                                ; absolute positioning
G1 X0 Y0 Z0.6                     ; go outside print area
G92 E0.0                           ; reset the extrusion distance
G1 E8                              ; purge Bubble
G1 X60.0 E11.0 F1000.0             ; intro line part 1
G1 X120.0 E16.0 F1000.0            ; intro line part 2
G1 X122.0 F1000.0                  ; wipe 2mm of filament
G92 E0.0                           ; reset the extrusion distance
M400                               ; finish all moves, clear the buffer
;
; =========================================================================================================
;

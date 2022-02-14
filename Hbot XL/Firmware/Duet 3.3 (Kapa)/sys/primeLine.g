; =========================================================================================================
;
; Print prime-line at a 'randomized' Y position from -1.1 to -2.9
;
; =========================================================================================================
;
; play start tune
M98 P"0:/sys/playsound.g"
;
; =========================================================================================================
;
G90                                ; absolute positioning
G1 X0 Z0.3 Y{(-2+(0.1*(floor(10*(cos(sqrt(sensors.analog[0].lastReading * state.upTime)))))))} F3000.0; Random Y position
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
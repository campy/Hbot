; =========================================================================================================
;
;  Preheat for FLEX at 240°C
;
; =========================================================================================================
;
M291 P"Press OK to continue or CANCEL to abort." R"Heat up for FLEX at 240°C?" S3
;
T0                                            ; select tool
G91                                           ; relative positioning
G1 Z20 F6000 H2                               ; lift Z relative to current position
G90                                           ; absolute positioning
M104 S240                                     ; set current tool temperature to filament 240°C
;
; =========================================================================================================
;

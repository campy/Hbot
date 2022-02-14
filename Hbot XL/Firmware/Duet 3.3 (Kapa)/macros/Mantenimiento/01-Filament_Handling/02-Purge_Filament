; =========================================================================================================
;
; purge filament. Inifinite loop, can be canceled once filament is loaded correctly
;
; =========================================================================================================
;
if state.status == "processing"     ; printer is not currently printing!
   M291 S2 P"Cannot run during an ongoing print. Please run this macro when the printer is paused!" R"WARNING!"
   M99
;
T0                                  ; select tool
;
while true
    M291 R"Purging needed?" P"Press OK to purge, press Cancel if color is correct."  S3
    G1 E20 F100                     ; extrude 20mm
    M400                            ; finish all moves, clear the buffer
    M300 S500 P200                  ; play beep sound
    G4 P200                         ; pause for 200ms
    M300 S600 P300                  ; play beep sound
    G4 P1000                        ; pause for 1000ms
;
; =========================================================================================================
;

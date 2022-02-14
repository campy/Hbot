; =========================================================================================================
;
; play little start tune
;
; =========================================================================================================
; Start! tune
;
M400                     ; finish all moves, clear the buffer
G4 S1                    ; wait 1 second
M300 P200 S523.25        ; play sound
G4 P200                  ; wait 200 milliseconds
M300 P200 S659.25        ; play sound
G4 P200                  ; wait 200 milliseconds
M300 P200 S739.99        ; play sound
G4 P250                  ; wait 250 milliseconds
M300 P285 S880.00        ; play sound
G4 P450                  ; wait 450 milliseconds
M300 P285 S880.00        ; play sound
G4 P285                  ; wait 285 milliseconds
M300 P625 S1108.73       ; play sound
G4 S1                    ; wait 1 second
M400                     ; finish all moves, clear the buffer
;
; =========================================================================================================
;
; =========================================================================================================
;
; called when M600 is issued.
;
; =========================================================================================================
;
M98 P"0:macros/01-Filament_Handling/03-Change_Filament"
;
M98 P"0:/sys/00-Functions/FilamentsensorStatus"                           ; update sensor status
;
M291 P"Press OK to resume print." S2                                   ; display message
M24                                                                    ; recover the last state pushed onto the stack.
;
; =========================================================================================================
;

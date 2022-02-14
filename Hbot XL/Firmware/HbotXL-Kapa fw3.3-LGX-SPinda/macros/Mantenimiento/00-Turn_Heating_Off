; =========================================================================================================
;
; turn off heaters and part cooling fan
;
; =========================================================================================================
;
if state.status == "processing"                                      ; printer is not currently printing!
   M291 S2 P"Cannot run during an ongoing print. Please run this macro when the printer is paused!" R"WARNING!"
   M99
;
G10 P0 S-274 R-274   ; turn off extruder
M140 S0 R0           ; turn off heatbed
M140 S-274           ;
M107                 ; turn off fan
;
; =========================================================================================================
;

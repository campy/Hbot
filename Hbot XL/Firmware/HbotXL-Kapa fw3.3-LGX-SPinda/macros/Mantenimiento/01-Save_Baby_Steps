; =========================================================================================================
;
; This macro displays the current z-trigger, babysteps, and the difference between
; the new numbers which represents the new trigger height.
;
; It clears the current baby-stepping and then rehomes the machine to make the new
; z-offset effective.
;
; If this is for a specific nozzle / sheet combination it is recommended to save the
; value like G31 0.234, where 0.234 repesents the display number into the nozzle / sheet
; config files under 0:/macros/02-Print_Surface_Handling or 0:/macros/02-Nozzle_Handling
; (depending on what z-probe you are using). Whenever this combination chnages execute
; the corresponding macros for the combination.

; If this is for a specific filament type, recommend placing this yielded information in
; the filament's config.g -
;
; Ensure M501 exists in 0:/sys/config.g !!!
;
; =========================================================================================================
;
if state.status != "processing"                                      ; printer is not currently printing!

   if move.axes[2].babystep !=0                                      ; if no babysteps are currently adjusted - exit routine
      M291 R{"z-Trigger Height"} P{"Current: " ^ sensors.probes[0].triggerHeight ^ ", Babysteps:" ^ move.axes[2].babystep ^ ", New: " ^ sensors.probes[0].triggerHeight - move.axes[2].babystep} S2
      M291 P{"Press OK to continue or CANCEL to abort."} R{"Setting z-probe offset to " ^ sensors.probes[0].triggerHeight - move.axes[2].babystep ^ "?"}  S3
      M400                                                           ; finish all current moves / clear the buffer
      G31 Z{sensors.probes[0].triggerHeight - move.axes[2].babystep} ; set G31 Z offset to corrected
      M500 P10:31                                                    ; save settings to config-overide.g - G31 P31 saves trigger height
      M290 R0 S0                                                     ; set babystep to 0mm absolute
      G28
   else
      M291 P"Babysteps are 0.000. z-trigger height will not be changed." S1
else
   M291 S2 P"z-Trigger height cannot be changed during an ongoing print. Please run this macro when the print is finished, and the bed is clear and ready!" R"WARNING!"
;
; =========================================================================================================
;

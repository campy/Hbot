; =========================================================================================================
;
; this macro displays the current trigger height, babysteps, and the new trigger height
;
; =========================================================================================================
;
M291 R{"z-Trigger Height"} P{"Current: " ^ sensors.probes[0].triggerHeight ^ ", Babysteps:" ^ move.axes[2].babystep ^ ", New: " ^ sensors.probes[0].triggerHeight - move.axes[2].babystep} S2
;M291 P{"Enter the number for the trigger height in your sheet / nozzle macro, like: G31 Z" ^ sensors.probes[0].triggerHeight - move.axes[2].babystep } S2
;
; =========================================================================================================
;
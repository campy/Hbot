; pause.g
; called when a print from SD card is paused
;
; generated by RepRapFirmware Configuration Tool v3.1.1 on Tue Jun 02 2020 01:54:44 GMT+0200 (hora de verano de Europa central)
M83            ; relative extruder moves
G1 E-5 F3600  ; retract 5mm of filament
G91            ; relative positioning
G1 Z5 F360     ; lift Z by 5mm
G90            ; absolute positioning
G1 X0 Y0 F6000 ; go to X=0 Y=0

; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Mon Jun 14 2021 12:17:56 GMT+0200 (hora de verano de Europa central)

M104 S0 ; turn off temperature
M140 S0 ; tur off bed
G28 X0  ; home X axis
G90
G1 Y305 F3600
M84     ; disable motors
M107
M104 S0 ; turn off temperature
M140 S0 ; tur off bed
G28 X0  ; home X axis
G90
G1 Y305 F3600
M84     ; disable motors
M107

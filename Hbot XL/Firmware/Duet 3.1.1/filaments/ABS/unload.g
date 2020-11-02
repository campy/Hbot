M291 P"Please wait while the nozzle is being heated up" R"Unloading ABS" S0 T0 ; Display message
G10 S240 ; Heat up the current tool to 210C
M116 ; Wait for the temperatures to be reached
M291 P"Retracting filament..." R"Unloading PLA" S0 T0 ; Display another message
G1 E-20 F300 ; Retract 20mm of filament at 300mm/min
G1 E-560 F3000 ; Retract 480mm of filament at 3000mm/min
M400 ; Wait for the moves to finish
M292 ; Hide the message again
M84 E0 ; Turn off extruder drives

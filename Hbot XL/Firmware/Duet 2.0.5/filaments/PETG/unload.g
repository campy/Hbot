M291 P"Amo porfavor, espera a que el nozzle este caliente" R"Sacando PET-G" S0 T0 ; Display message
M280 P3 S50 I1
G10 S240 ; Heat up the current tool to 210C
M116 ; Wait for the temperatures to be reached
M291 P"Sacando filamento..." R"Sacando PLA" S0 T0 ; Display another message
G1 E20 F100 ; extrude 20mm of filament at 300mm/min
G1 E-50 F10000 ; Retract 20mm of filament at 300mm/min
G1 E-560 F3000 ; Retract 480mm of filament at 3000mm/min
M400 ; Wait for the moves to finish
M292 ; Hide the message again
M84 E0 ; Turn off extruder drives 
M280 P3 S0 I1 
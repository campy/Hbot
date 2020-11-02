M291 P"Espera a que el nozzle este caliente" R"Cargando PET-G FFF" S0 T0 ; Display message
G10 S250 ; Set current tool temperature to 250C
M280 P3 S50 I1 
M116 ; Wait for the temperatures to be reached
M291 P"Feeding filament..." R"Cargando PLA" S0 T0 ; Display new message
G1 E10 F600 ; Feed 10mm of filament at 600mm/min
G1 E490 F3000 ; Feed 560mm of filament at 3000mm/min
G1 E40 F100 ; Feed 30mm of filament at 100mm/min
G4 P1000 ; Wait one second
G1 E-1 F1800 ; Retract 1mm of filament at 1800mm/min
M400 ; Wait for moves to complete
M292 ; Hide the message
M84 E0 ; Turn off extruder drives
M280 P3 S0 I1 
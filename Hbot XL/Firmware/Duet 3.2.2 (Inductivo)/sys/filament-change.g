; filament-change.g
G91 ;relative positioning for Z move
G1 Z20 ; lift Z by 10mm
G90 ;back to absolute mode as the macro want to go to a specific point for filament unload.
M83 ; set extruder to relative mode

; UNLOAD
G1 E-5 F3000 ; Retract 5mm of filament at 3000mm/min
G1 X50 Y0 F6000; move to unload point of X50, Y0
;G1 E-500 F3000 ; Retract 500mm of filament at 3000mm/min
G1 E10 F200            ; Feed 10mm of filament at 200mm/min
M291 P"Now retracting filament..." R"Unloading Filament" T5 ; Display message
G1 E-8 F2000           ; Retract 8mm of filament at 2000mm/min
G1 E-80 F2500          ; Retract 95mm of filament at 2500mm/min
M400 ; Wait for the moves to finish
M300 P1000
M291 P"Pull the filament out immediately!!" R"Remove Filament" T5 ; Display message

M291 P"Swap filamentand and press OK only AFTER inserting filament into extruder" S2

; LOAD
M83 ; set extruder to relative mode
G1 E50 F3000 ; Load 480mm of filament at 3000mm/min
G1 E15 F300 ; Load 35mm of filament at 300mm/min
G1 E5 F100 ; Load 5mm of filament at 100mm/min
M291 P"Clean nozzle. Press ok to Continue printing..." S2       ; Display new message

G91 ;relative positioning for Z move
G1 Z-1 ; drop Z by 1mm to undo the lift
G90 ;back to absolute mode
M400 ; Wait for the moves to finish

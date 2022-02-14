; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: AKL
; Filament: PLA
; Created: Wed Apr 15 2020 11:56:10 GMT+0200 (hora de verano de Europa central)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 210 °C
; Bed Temperature = 60 °C
; Retraction Distance = 1.3 mm
; Layer Height = 0.2 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Round
; Bed Diameter = 220 mm
; Origin Bed Center = true
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4800 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 2100 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.2
; Factor Stepping = 0.01
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 125 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 0.93
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 ; Home all axes
G1 Z5 F100 ; Z raise
M104 S210 ; Set nozzle temperature (no wait)
M190 S60 ; Set bed temperature (wait)
M109 S210 ; Wait for nozzle temp
M204 P500 ; Acceleration
G92 E0 ; Reset extruder distance
G1 X0 Y0 F7200 ; move to start
G1 Z0.2 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X-49 Y-62.5 F7200 ; move to start
G1 X-49 Y62.5 E12.4726 F1800 ; print line
G1 X-48.28 Y62.5 F7200 ; move to start
G1 X-48.28 Y-62.5 E12.4726 F1800 ; print line
G1 E-1.3 F2100 ; retract
;
; print anchor frame
;
G1 X-39 Y-65.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X-39 Y40.5 E4.328 F1200 ; print line
G1 X-38.52 Y40.5 F7200 ; move to start
G1 X-38.52 Y-65.5 E4.328 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X41 Y-65.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X41 Y40.5 E4.328 F1200 ; print line
G1 X40.52 Y40.5 F7200 ; move to start
G1 X40.52 Y-65.5 E4.328 F1200 ; print line
G1 E-1.3 F2100 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-39 Y-62.5 F7200 ; move to start
M572 D0 ; set K-factor
M117 K0 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-62.5 E0.7424 F1200 ; print line
G1 X21 Y-62.5 E1.4847 F4800 ; print line
G1 X41 Y-62.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-57.5 F7200 ; move to start
M572 D0.01 ; set K-factor
M117 K0.01 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-57.5 E0.7424 F1200 ; print line
G1 X21 Y-57.5 E1.4847 F4800 ; print line
G1 X41 Y-57.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-52.5 F7200 ; move to start
M572 D0.02 ; set K-factor
M117 K0.02 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-52.5 E0.7424 F1200 ; print line
G1 X21 Y-52.5 E1.4847 F4800 ; print line
G1 X41 Y-52.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-47.5 F7200 ; move to start
M572 D0.03 ; set K-factor
M117 K0.03 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-47.5 E0.7424 F1200 ; print line
G1 X21 Y-47.5 E1.4847 F4800 ; print line
G1 X41 Y-47.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-42.5 F7200 ; move to start
M572 D0.04 ; set K-factor
M117 K0.04 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-42.5 E0.7424 F1200 ; print line
G1 X21 Y-42.5 E1.4847 F4800 ; print line
G1 X41 Y-42.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-37.5 F7200 ; move to start
M572 D0.05 ; set K-factor
M117 K0.05 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-37.5 E0.7424 F1200 ; print line
G1 X21 Y-37.5 E1.4847 F4800 ; print line
G1 X41 Y-37.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-32.5 F7200 ; move to start
M572 D0.06 ; set K-factor
M117 K0.06 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-32.5 E0.7424 F1200 ; print line
G1 X21 Y-32.5 E1.4847 F4800 ; print line
G1 X41 Y-32.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-27.5 F7200 ; move to start
M572 D0.07 ; set K-factor
M117 K0.07 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-27.5 E0.7424 F1200 ; print line
G1 X21 Y-27.5 E1.4847 F4800 ; print line
G1 X41 Y-27.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-22.5 F7200 ; move to start
M572 D0.08 ; set K-factor
M117 K0.08 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-22.5 E0.7424 F1200 ; print line
G1 X21 Y-22.5 E1.4847 F4800 ; print line
G1 X41 Y-22.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-17.5 F7200 ; move to start
M572 D0.09 ; set K-factor
M117 K0.09 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-17.5 E0.7424 F1200 ; print line
G1 X21 Y-17.5 E1.4847 F4800 ; print line
G1 X41 Y-17.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-12.5 F7200 ; move to start
M572 D0.1 ; set K-factor
M117 K0.1 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-12.5 E0.7424 F1200 ; print line
G1 X21 Y-12.5 E1.4847 F4800 ; print line
G1 X41 Y-12.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-7.5 F7200 ; move to start
M572 D0.11 ; set K-factor
M117 K0.11 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-7.5 E0.7424 F1200 ; print line
G1 X21 Y-7.5 E1.4847 F4800 ; print line
G1 X41 Y-7.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y-2.5 F7200 ; move to start
M572 D0.12 ; set K-factor
M117 K0.12 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y-2.5 E0.7424 F1200 ; print line
G1 X21 Y-2.5 E1.4847 F4800 ; print line
G1 X41 Y-2.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y2.5 F7200 ; move to start
M572 D0.13 ; set K-factor
M117 K0.13 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y2.5 E0.7424 F1200 ; print line
G1 X21 Y2.5 E1.4847 F4800 ; print line
G1 X41 Y2.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y7.5 F7200 ; move to start
M572 D0.14 ; set K-factor
M117 K0.14 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y7.5 E0.7424 F1200 ; print line
G1 X21 Y7.5 E1.4847 F4800 ; print line
G1 X41 Y7.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y12.5 F7200 ; move to start
M572 D0.15 ; set K-factor
M117 K0.15 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y12.5 E0.7424 F1200 ; print line
G1 X21 Y12.5 E1.4847 F4800 ; print line
G1 X41 Y12.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y17.5 F7200 ; move to start
M572 D0.16 ; set K-factor
M117 K0.16 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y17.5 E0.7424 F1200 ; print line
G1 X21 Y17.5 E1.4847 F4800 ; print line
G1 X41 Y17.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y22.5 F7200 ; move to start
M572 D0.17 ; set K-factor
M117 K0.17 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y22.5 E0.7424 F1200 ; print line
G1 X21 Y22.5 E1.4847 F4800 ; print line
G1 X41 Y22.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y27.5 F7200 ; move to start
M572 D0.18 ; set K-factor
M117 K0.18 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y27.5 E0.7424 F1200 ; print line
G1 X21 Y27.5 E1.4847 F4800 ; print line
G1 X41 Y27.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y32.5 F7200 ; move to start
M572 D0.19 ; set K-factor
M117 K0.19 ; 
G1 E1.3 F2100 ; un-retract
G1 X-19 Y32.5 E0.7424 F1200 ; print line
G1 X21 Y32.5 E1.4847 F4800 ; print line
G1 X41 Y32.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X-39 Y37.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
M572 D0 ; Set K-factor 0
G1 X-19 Y42.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X-19 Y62.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 X21 Y42.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X21 Y62.5 E0.7424 F1200 ; print line
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X43 Y-64.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y-64.5 E0.0742 F1200 ; 0
G1 X45 Y-62.5 E0.0742 F1200 ; 0
G1 X45 Y-60.5 E0.0742 F1200 ; 0
G1 X43 Y-60.5 E0.0742 F1200 ; 0
G1 X43 Y-62.5 E0.0742 F1200 ; 0
G1 X43 Y-64.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-54.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y-54.5 E0.0742 F1200 ; 0
G1 X45 Y-52.5 E0.0742 F1200 ; 0
G1 X45 Y-50.5 E0.0742 F1200 ; 0
G1 X43 Y-50.5 E0.0742 F1200 ; 0
G1 X43 Y-52.5 E0.0742 F1200 ; 0
G1 X43 Y-54.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y-54.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y-54.1 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y-54.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X49 Y-54.5 E0.0742 F1200 ; 0
G1 X49 Y-52.5 E0.0742 F1200 ; 0
G1 X49 Y-50.5 E0.0742 F1200 ; 0
G1 X47 Y-50.5 E0.0742 F1200 ; 0
G1 X47 Y-52.5 E0.0742 F1200 ; 0
G1 X47 Y-54.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X50 Y-54.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X50 Y-52.5 F7200 ; move to start
G1 X50 Y-50.5 F7200 ; move to start
G1 X52 Y-50.5 E0.0742 F1200 ; 2
G1 X52 Y-52.5 E0.0742 F1200 ; 2
G1 X50 Y-52.5 E0.0742 F1200 ; 2
G1 X50 Y-54.5 E0.0742 F1200 ; 2
G1 X52 Y-54.5 E0.0742 F1200 ; 2
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-44.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y-44.5 E0.0742 F1200 ; 0
G1 X45 Y-42.5 E0.0742 F1200 ; 0
G1 X45 Y-40.5 E0.0742 F1200 ; 0
G1 X43 Y-40.5 E0.0742 F1200 ; 0
G1 X43 Y-42.5 E0.0742 F1200 ; 0
G1 X43 Y-44.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y-44.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y-44.1 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y-44.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X49 Y-44.5 E0.0742 F1200 ; 0
G1 X49 Y-42.5 E0.0742 F1200 ; 0
G1 X49 Y-40.5 E0.0742 F1200 ; 0
G1 X47 Y-40.5 E0.0742 F1200 ; 0
G1 X47 Y-42.5 E0.0742 F1200 ; 0
G1 X47 Y-44.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X50 Y-44.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X50 Y-42.5 F7200 ; move to start
G1 X50 Y-40.5 F7200 ; move to start
G1 X50 Y-42.5 E0.0742 F1200 ; 4
G1 X52 Y-42.5 E0.0742 F1200 ; 4
G1 X52 Y-40.5 F7200 ; move to start
G1 X52 Y-42.5 E0.0742 F1200 ; 4
G1 X52 Y-44.5 E0.0742 F1200 ; 4
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-34.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y-34.5 E0.0742 F1200 ; 0
G1 X45 Y-32.5 E0.0742 F1200 ; 0
G1 X45 Y-30.5 E0.0742 F1200 ; 0
G1 X43 Y-30.5 E0.0742 F1200 ; 0
G1 X43 Y-32.5 E0.0742 F1200 ; 0
G1 X43 Y-34.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y-34.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y-34.1 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y-34.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X49 Y-34.5 E0.0742 F1200 ; 0
G1 X49 Y-32.5 E0.0742 F1200 ; 0
G1 X49 Y-30.5 E0.0742 F1200 ; 0
G1 X47 Y-30.5 E0.0742 F1200 ; 0
G1 X47 Y-32.5 E0.0742 F1200 ; 0
G1 X47 Y-34.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X50 Y-34.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X50 Y-32.5 F7200 ; move to start
G1 X52 Y-32.5 E0.0742 F1200 ; 6
G1 X52 Y-34.5 E0.0742 F1200 ; 6
G1 X50 Y-34.5 E0.0742 F1200 ; 6
G1 X50 Y-32.5 E0.0742 F1200 ; 6
G1 X50 Y-30.5 E0.0742 F1200 ; 6
G1 X52 Y-30.5 E0.0742 F1200 ; 6
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-24.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y-24.5 E0.0742 F1200 ; 0
G1 X45 Y-22.5 E0.0742 F1200 ; 0
G1 X45 Y-20.5 E0.0742 F1200 ; 0
G1 X43 Y-20.5 E0.0742 F1200 ; 0
G1 X43 Y-22.5 E0.0742 F1200 ; 0
G1 X43 Y-24.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y-24.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y-24.1 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y-24.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X49 Y-24.5 E0.0742 F1200 ; 0
G1 X49 Y-22.5 E0.0742 F1200 ; 0
G1 X49 Y-20.5 E0.0742 F1200 ; 0
G1 X47 Y-20.5 E0.0742 F1200 ; 0
G1 X47 Y-22.5 E0.0742 F1200 ; 0
G1 X47 Y-24.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X50 Y-24.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X50 Y-22.5 F7200 ; move to start
G1 X52 Y-22.5 E0.0742 F1200 ; 8
G1 X52 Y-24.5 E0.0742 F1200 ; 8
G1 X50 Y-24.5 E0.0742 F1200 ; 8
G1 X50 Y-22.5 E0.0742 F1200 ; 8
G1 X50 Y-20.5 E0.0742 F1200 ; 8
G1 X52 Y-20.5 E0.0742 F1200 ; 8
G1 X52 Y-22.5 E0.0742 F1200 ; 8
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-14.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y-14.5 E0.0742 F1200 ; 0
G1 X45 Y-12.5 E0.0742 F1200 ; 0
G1 X45 Y-10.5 E0.0742 F1200 ; 0
G1 X43 Y-10.5 E0.0742 F1200 ; 0
G1 X43 Y-12.5 E0.0742 F1200 ; 0
G1 X43 Y-14.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y-14.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y-14.1 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y-14.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X47 Y-12.5 E0.0742 F1200 ; 1
G1 X47 Y-10.5 E0.0742 F1200 ; 1
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-4.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y-4.5 E0.0742 F1200 ; 0
G1 X45 Y-2.5 E0.0742 F1200 ; 0
G1 X45 Y-0.5 E0.0742 F1200 ; 0
G1 X43 Y-0.5 E0.0742 F1200 ; 0
G1 X43 Y-2.5 E0.0742 F1200 ; 0
G1 X43 Y-4.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y-4.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y-4.1 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y-4.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X47 Y-2.5 E0.0742 F1200 ; 1
G1 X47 Y-0.5 E0.0742 F1200 ; 1
G1 E-1.3 F2100 ; retract
G1 X48 Y-4.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X48 Y-2.5 F7200 ; move to start
G1 X48 Y-0.5 F7200 ; move to start
G1 X50 Y-0.5 E0.0742 F1200 ; 2
G1 X50 Y-2.5 E0.0742 F1200 ; 2
G1 X48 Y-2.5 E0.0742 F1200 ; 2
G1 X48 Y-4.5 E0.0742 F1200 ; 2
G1 X50 Y-4.5 E0.0742 F1200 ; 2
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y5.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y5.5 E0.0742 F1200 ; 0
G1 X45 Y7.5 E0.0742 F1200 ; 0
G1 X45 Y9.5 E0.0742 F1200 ; 0
G1 X43 Y9.5 E0.0742 F1200 ; 0
G1 X43 Y7.5 E0.0742 F1200 ; 0
G1 X43 Y5.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y5.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y5.9 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y5.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X47 Y7.5 E0.0742 F1200 ; 1
G1 X47 Y9.5 E0.0742 F1200 ; 1
G1 E-1.3 F2100 ; retract
G1 X48 Y5.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X48 Y7.5 F7200 ; move to start
G1 X48 Y9.5 F7200 ; move to start
G1 X48 Y7.5 E0.0742 F1200 ; 4
G1 X50 Y7.5 E0.0742 F1200 ; 4
G1 X50 Y9.5 F7200 ; move to start
G1 X50 Y7.5 E0.0742 F1200 ; 4
G1 X50 Y5.5 E0.0742 F1200 ; 4
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y15.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y15.5 E0.0742 F1200 ; 0
G1 X45 Y17.5 E0.0742 F1200 ; 0
G1 X45 Y19.5 E0.0742 F1200 ; 0
G1 X43 Y19.5 E0.0742 F1200 ; 0
G1 X43 Y17.5 E0.0742 F1200 ; 0
G1 X43 Y15.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y15.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y15.9 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y15.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X47 Y17.5 E0.0742 F1200 ; 1
G1 X47 Y19.5 E0.0742 F1200 ; 1
G1 E-1.3 F2100 ; retract
G1 X48 Y15.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X48 Y17.5 F7200 ; move to start
G1 X50 Y17.5 E0.0742 F1200 ; 6
G1 X50 Y15.5 E0.0742 F1200 ; 6
G1 X48 Y15.5 E0.0742 F1200 ; 6
G1 X48 Y17.5 E0.0742 F1200 ; 6
G1 X48 Y19.5 E0.0742 F1200 ; 6
G1 X50 Y19.5 E0.0742 F1200 ; 6
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y25.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1.3 F2100 ; un-retract
G1 X45 Y25.5 E0.0742 F1200 ; 0
G1 X45 Y27.5 E0.0742 F1200 ; 0
G1 X45 Y29.5 E0.0742 F1200 ; 0
G1 X43 Y29.5 E0.0742 F1200 ; 0
G1 X43 Y27.5 E0.0742 F1200 ; 0
G1 X43 Y25.5 E0.0742 F1200 ; 0
G1 E-1.3 F2100 ; retract
G1 X46 Y25.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X46 Y25.9 E0.0148 F1200 ; dot
G1 E-1.3 F2100 ; retract
G1 X47 Y25.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X47 Y27.5 E0.0742 F1200 ; 1
G1 X47 Y29.5 E0.0742 F1200 ; 1
G1 E-1.3 F2100 ; retract
G1 X48 Y25.5 F7200 ; move to start
G1 E1.3 F2100 ; un-retract
G1 X48 Y27.5 F7200 ; move to start
G1 X50 Y27.5 E0.0742 F1200 ; 8
G1 X50 Y25.5 E0.0742 F1200 ; 8
G1 X48 Y25.5 E0.0742 F1200 ; 8
G1 X48 Y27.5 E0.0742 F1200 ; 8
G1 X48 Y29.5 E0.0742 F1200 ; 8
G1 X50 Y29.5 E0.0742 F1200 ; 8
G1 X50 Y27.5 E0.0742 F1200 ; 8
G1 E-1.3 F2100 ; retract
G1 Z0.3 F1200 ; zHop
;
; FINISH
;
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X0 Y0 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;
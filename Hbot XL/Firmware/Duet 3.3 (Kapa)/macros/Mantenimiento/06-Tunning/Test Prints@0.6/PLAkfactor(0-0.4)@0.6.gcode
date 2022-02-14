; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Predator
; Filament: PLA
; Created: Wed Apr 21 2021 01:49:43 GMT+0200 (hora de verano de Europa central)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.6 mm
; Nozzle Temperature = 205 °C
; Bed Temperature = 60 °C
; Retraction Distance = 1.2 mm
; Layer Height = 0.3 mm
; Extruder = 0 
; Fan Speed = 100 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Round
; Bed Diameter = 380 mm
; Origin Bed Center = true
;
; Settings Speed:
; Slow Printing Speed = 2400 mm/m
; Fast Printing Speed = 4800 mm/m
; Movement Speed = 7200 mm/m
; Retract Speed = 2100 mm/m
; Unretract Speed = 1800 mm/m
; Printing Acceleration = 1000 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.4
; Factor Stepping = 0.02
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Alternate
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
; Extrusion Multiplier = 0.95
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90
M83
G28 ; home all axes
M106 S0
M140 S50 ; custom bed temp
M104 S150                              ; Precaliento nozzle
M190 S50 ; custom bed temp
M572 D0 S0.0                           ; Clear pressure advance.
M220 S100                              ; Set speed factor back to 100% in case it was changed
M221 S100                              ; Set extrusion factor back to 100% in case it was changed
M290 R0 S0                             ; Clear any baby-stepping
M106 S0                                ; Turn part cooling blower off if it is on
M703                                   ; Execute loaded filament's config.g
G90                                    ; absolute positioning
M104 S150                              ; Precaliento nozzle
M109 S150                              ; wait for extruder temp
G1 Z10 F6000                           ; Bajo rapido para hacer el probe
G30                                    ;Establezco altura Z para evitar error Z-datum y que cargue correctamente el offset del probe
;G32                                   ;Por si quiero calibrar (normalmente desactivado)
;G29 S1                                ;Cargo la malla
G1 X0 Y-190 Z80 F6000                  ; Me pongo en posicion para limpiar el filamento
M104 S205        ; set extruder temp
M109 S205        ; wait for extruder temp
G92 E0                                 ;zero the extruded length 
;G1 F200 E30                            ; Saca un poco de filamento
G92 E0                                 ;zero the extruded length again
;M291 S3 R"Remove Filament from nozzle" P"Then press OK"
;G4 S4                                  ; Pausa de 8 segundos (por si no quiero el menu anterior)
M400                                   ; Finish all moves and clear the buffer
M98 P"0:/sys/purga.g"                     ; Fichero de purga por el borde
G1 Z5 F100 ; Z raise
M109 S205 ; Wait for nozzle temp
M204 P1000 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S255
G1 X0 Y0 F7200 ; move to start
G1 Z0.3 F2400 ; Move to layer height
;
; prime nozzle
;
G1 X-49 Y-62.5 F7200 ; move to start
G1 X-49 Y62.5 E28.0632 F1800 ; print line
G1 X-47.92 Y62.5 F7200 ; move to start
G1 X-47.92 Y-62.5 E28.0632 F1800 ; print line
G1 E-1.2 F2100 ; retract
;
; print anchor frame
;
G1 X-39 Y-65.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X-39 Y40.5 E9.9474 F2400 ; print line
G1 X-38.28 Y40.5 F7200 ; move to start
G1 X-38.28 Y-65.5 E9.9474 F2400 ; print line
G1 E-1.2 F2100 ; retract
G1 X41 Y-65.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X41 Y40.5 E9.9474 F2400 ; print line
G1 X40.28 Y40.5 F7200 ; move to start
G1 X40.28 Y-65.5 E9.9474 F2400 ; print line
G1 E-1.2 F2100 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-39 Y-62.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
M572 S0 ; set K-factor
M117 K0 ; 
G1 X-19 Y-62.5 E1.7062 F2400 ; print line
G1 X21 Y-62.5 E3.4125 F4800 ; print line
G1 X41 Y-62.5 E1.7062 F2400 ; print line
G1 X41 Y-57.5 E0.4266 F4800 ; print line
M572 S0.02 ; set K-factor
M117 K0.02 ; 
G1 X21 Y-57.5 E1.7062 F2400 ; print line
G1 X-19 Y-57.5 E3.4125 F4800 ; print line
G1 X-39 Y-57.5 E1.7062 F2400 ; print line
G1 X-39 Y-52.5 E0.4266 F4800 ; print line
M572 S0.04 ; set K-factor
M117 K0.04 ; 
G1 X-19 Y-52.5 E1.7062 F2400 ; print line
G1 X21 Y-52.5 E3.4125 F4800 ; print line
G1 X41 Y-52.5 E1.7062 F2400 ; print line
G1 X41 Y-47.5 E0.4266 F4800 ; print line
M572 S0.06 ; set K-factor
M117 K0.06 ; 
G1 X21 Y-47.5 E1.7062 F2400 ; print line
G1 X-19 Y-47.5 E3.4125 F4800 ; print line
G1 X-39 Y-47.5 E1.7062 F2400 ; print line
G1 X-39 Y-42.5 E0.4266 F4800 ; print line
M572 S0.08 ; set K-factor
M117 K0.08 ; 
G1 X-19 Y-42.5 E1.7062 F2400 ; print line
G1 X21 Y-42.5 E3.4125 F4800 ; print line
G1 X41 Y-42.5 E1.7062 F2400 ; print line
G1 X41 Y-37.5 E0.4266 F4800 ; print line
M572 S0.1 ; set K-factor
M117 K0.1 ; 
G1 X21 Y-37.5 E1.7062 F2400 ; print line
G1 X-19 Y-37.5 E3.4125 F4800 ; print line
G1 X-39 Y-37.5 E1.7062 F2400 ; print line
G1 X-39 Y-32.5 E0.4266 F4800 ; print line
M572 S0.12 ; set K-factor
M117 K0.12 ; 
G1 X-19 Y-32.5 E1.7062 F2400 ; print line
G1 X21 Y-32.5 E3.4125 F4800 ; print line
G1 X41 Y-32.5 E1.7062 F2400 ; print line
G1 X41 Y-27.5 E0.4266 F4800 ; print line
M572 S0.14 ; set K-factor
M117 K0.14 ; 
G1 X21 Y-27.5 E1.7062 F2400 ; print line
G1 X-19 Y-27.5 E3.4125 F4800 ; print line
G1 X-39 Y-27.5 E1.7062 F2400 ; print line
G1 X-39 Y-22.5 E0.4266 F4800 ; print line
M572 S0.16 ; set K-factor
M117 K0.16 ; 
G1 X-19 Y-22.5 E1.7062 F2400 ; print line
G1 X21 Y-22.5 E3.4125 F4800 ; print line
G1 X41 Y-22.5 E1.7062 F2400 ; print line
G1 X41 Y-17.5 E0.4266 F4800 ; print line
M572 S0.18 ; set K-factor
M117 K0.18 ; 
G1 X21 Y-17.5 E1.7062 F2400 ; print line
G1 X-19 Y-17.5 E3.4125 F4800 ; print line
G1 X-39 Y-17.5 E1.7062 F2400 ; print line
G1 X-39 Y-12.5 E0.4266 F4800 ; print line
M572 S0.2 ; set K-factor
M117 K0.2 ; 
G1 X-19 Y-12.5 E1.7062 F2400 ; print line
G1 X21 Y-12.5 E3.4125 F4800 ; print line
G1 X41 Y-12.5 E1.7062 F2400 ; print line
G1 X41 Y-7.5 E0.4266 F4800 ; print line
M572 S0.22 ; set K-factor
M117 K0.22 ; 
G1 X21 Y-7.5 E1.7062 F2400 ; print line
G1 X-19 Y-7.5 E3.4125 F4800 ; print line
G1 X-39 Y-7.5 E1.7062 F2400 ; print line
G1 X-39 Y-2.5 E0.4266 F4800 ; print line
M572 S0.24 ; set K-factor
M117 K0.24 ; 
G1 X-19 Y-2.5 E1.7062 F2400 ; print line
G1 X21 Y-2.5 E3.4125 F4800 ; print line
G1 X41 Y-2.5 E1.7062 F2400 ; print line
G1 X41 Y2.5 E0.4266 F4800 ; print line
M572 S0.26 ; set K-factor
M117 K0.26 ; 
G1 X21 Y2.5 E1.7062 F2400 ; print line
G1 X-19 Y2.5 E3.4125 F4800 ; print line
G1 X-39 Y2.5 E1.7062 F2400 ; print line
G1 X-39 Y7.5 E0.4266 F4800 ; print line
M572 S0.28 ; set K-factor
M117 K0.28 ; 
G1 X-19 Y7.5 E1.7062 F2400 ; print line
G1 X21 Y7.5 E3.4125 F4800 ; print line
G1 X41 Y7.5 E1.7062 F2400 ; print line
G1 X41 Y12.5 E0.4266 F4800 ; print line
M572 S0.3 ; set K-factor
M117 K0.3 ; 
G1 X21 Y12.5 E1.7062 F2400 ; print line
G1 X-19 Y12.5 E3.4125 F4800 ; print line
G1 X-39 Y12.5 E1.7062 F2400 ; print line
G1 X-39 Y17.5 E0.4266 F4800 ; print line
M572 S0.32 ; set K-factor
M117 K0.32 ; 
G1 X-19 Y17.5 E1.7062 F2400 ; print line
G1 X21 Y17.5 E3.4125 F4800 ; print line
G1 X41 Y17.5 E1.7062 F2400 ; print line
G1 X41 Y22.5 E0.4266 F4800 ; print line
M572 S0.34 ; set K-factor
M117 K0.34 ; 
G1 X21 Y22.5 E1.7062 F2400 ; print line
G1 X-19 Y22.5 E3.4125 F4800 ; print line
G1 X-39 Y22.5 E1.7062 F2400 ; print line
G1 X-39 Y27.5 E0.4266 F4800 ; print line
M572 S0.36 ; set K-factor
M117 K0.36 ; 
G1 X-19 Y27.5 E1.7062 F2400 ; print line
G1 X21 Y27.5 E3.4125 F4800 ; print line
G1 X41 Y27.5 E1.7062 F2400 ; print line
G1 X41 Y32.5 E0.4266 F4800 ; print line
M572 S0.38 ; set K-factor
M117 K0.38 ; 
G1 X21 Y32.5 E1.7062 F2400 ; print line
G1 X-19 Y32.5 E3.4125 F4800 ; print line
G1 X-39 Y32.5 E1.7062 F2400 ; print line
G1 X-39 Y37.5 E0.4266 F4800 ; print line
G1 E-1.2 F2100 ; retract
;
; Mark the test area for reference
M117 K0
M572 S0 ; Set K-factor 0
G1 X-19 Y42.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X-19 Y62.5 E1.7062 F2400 ; print line
G1 E-1.2 F2100 ; retract
G1 X21 Y42.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X21 Y62.5 E1.7062 F2400 ; print line
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
;
; print K-values
;
G1 X43 Y-64.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y-64.5 E0.1706 F2400 ; 0
G1 X45 Y-62.5 E0.1706 F2400 ; 0
G1 X45 Y-60.5 E0.1706 F2400 ; 0
G1 X43 Y-60.5 E0.1706 F2400 ; 0
G1 X43 Y-62.5 E0.1706 F2400 ; 0
G1 X43 Y-64.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y-54.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y-54.5 E0.1706 F2400 ; 0
G1 X45 Y-52.5 E0.1706 F2400 ; 0
G1 X45 Y-50.5 E0.1706 F2400 ; 0
G1 X43 Y-50.5 E0.1706 F2400 ; 0
G1 X43 Y-52.5 E0.1706 F2400 ; 0
G1 X43 Y-54.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y-54.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y-54.1 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y-54.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X49 Y-54.5 E0.1706 F2400 ; 0
G1 X49 Y-52.5 E0.1706 F2400 ; 0
G1 X49 Y-50.5 E0.1706 F2400 ; 0
G1 X47 Y-50.5 E0.1706 F2400 ; 0
G1 X47 Y-52.5 E0.1706 F2400 ; 0
G1 X47 Y-54.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X50 Y-54.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X50 Y-52.5 F7200 ; move to start
G1 X50 Y-50.5 F7200 ; move to start
G1 X50 Y-52.5 E0.1706 F2400 ; 4
G1 X52 Y-52.5 E0.1706 F2400 ; 4
G1 X52 Y-50.5 F7200 ; move to start
G1 X52 Y-52.5 E0.1706 F2400 ; 4
G1 X52 Y-54.5 E0.1706 F2400 ; 4
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y-44.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y-44.5 E0.1706 F2400 ; 0
G1 X45 Y-42.5 E0.1706 F2400 ; 0
G1 X45 Y-40.5 E0.1706 F2400 ; 0
G1 X43 Y-40.5 E0.1706 F2400 ; 0
G1 X43 Y-42.5 E0.1706 F2400 ; 0
G1 X43 Y-44.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y-44.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y-44.1 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y-44.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X49 Y-44.5 E0.1706 F2400 ; 0
G1 X49 Y-42.5 E0.1706 F2400 ; 0
G1 X49 Y-40.5 E0.1706 F2400 ; 0
G1 X47 Y-40.5 E0.1706 F2400 ; 0
G1 X47 Y-42.5 E0.1706 F2400 ; 0
G1 X47 Y-44.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X50 Y-44.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X50 Y-42.5 F7200 ; move to start
G1 X52 Y-42.5 E0.1706 F2400 ; 8
G1 X52 Y-44.5 E0.1706 F2400 ; 8
G1 X50 Y-44.5 E0.1706 F2400 ; 8
G1 X50 Y-42.5 E0.1706 F2400 ; 8
G1 X50 Y-40.5 E0.1706 F2400 ; 8
G1 X52 Y-40.5 E0.1706 F2400 ; 8
G1 X52 Y-42.5 E0.1706 F2400 ; 8
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y-34.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y-34.5 E0.1706 F2400 ; 0
G1 X45 Y-32.5 E0.1706 F2400 ; 0
G1 X45 Y-30.5 E0.1706 F2400 ; 0
G1 X43 Y-30.5 E0.1706 F2400 ; 0
G1 X43 Y-32.5 E0.1706 F2400 ; 0
G1 X43 Y-34.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y-34.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y-34.1 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y-34.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X47 Y-32.5 E0.1706 F2400 ; 1
G1 X47 Y-30.5 E0.1706 F2400 ; 1
G1 E-1.2 F2100 ; retract
G1 X48 Y-34.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X48 Y-32.5 F7200 ; move to start
G1 X48 Y-30.5 F7200 ; move to start
G1 X50 Y-30.5 E0.1706 F2400 ; 2
G1 X50 Y-32.5 E0.1706 F2400 ; 2
G1 X48 Y-32.5 E0.1706 F2400 ; 2
G1 X48 Y-34.5 E0.1706 F2400 ; 2
G1 X50 Y-34.5 E0.1706 F2400 ; 2
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y-24.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y-24.5 E0.1706 F2400 ; 0
G1 X45 Y-22.5 E0.1706 F2400 ; 0
G1 X45 Y-20.5 E0.1706 F2400 ; 0
G1 X43 Y-20.5 E0.1706 F2400 ; 0
G1 X43 Y-22.5 E0.1706 F2400 ; 0
G1 X43 Y-24.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y-24.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y-24.1 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y-24.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X47 Y-22.5 E0.1706 F2400 ; 1
G1 X47 Y-20.5 E0.1706 F2400 ; 1
G1 E-1.2 F2100 ; retract
G1 X48 Y-24.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X48 Y-22.5 F7200 ; move to start
G1 X50 Y-22.5 E0.1706 F2400 ; 6
G1 X50 Y-24.5 E0.1706 F2400 ; 6
G1 X48 Y-24.5 E0.1706 F2400 ; 6
G1 X48 Y-22.5 E0.1706 F2400 ; 6
G1 X48 Y-20.5 E0.1706 F2400 ; 6
G1 X50 Y-20.5 E0.1706 F2400 ; 6
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y-14.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y-14.5 E0.1706 F2400 ; 0
G1 X45 Y-12.5 E0.1706 F2400 ; 0
G1 X45 Y-10.5 E0.1706 F2400 ; 0
G1 X43 Y-10.5 E0.1706 F2400 ; 0
G1 X43 Y-12.5 E0.1706 F2400 ; 0
G1 X43 Y-14.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y-14.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y-14.1 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y-14.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X47 Y-12.5 F7200 ; move to start
G1 X47 Y-10.5 F7200 ; move to start
G1 X49 Y-10.5 E0.1706 F2400 ; 2
G1 X49 Y-12.5 E0.1706 F2400 ; 2
G1 X47 Y-12.5 E0.1706 F2400 ; 2
G1 X47 Y-14.5 E0.1706 F2400 ; 2
G1 X49 Y-14.5 E0.1706 F2400 ; 2
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y-4.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y-4.5 E0.1706 F2400 ; 0
G1 X45 Y-2.5 E0.1706 F2400 ; 0
G1 X45 Y-0.5 E0.1706 F2400 ; 0
G1 X43 Y-0.5 E0.1706 F2400 ; 0
G1 X43 Y-2.5 E0.1706 F2400 ; 0
G1 X43 Y-4.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y-4.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y-4.1 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y-4.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X47 Y-2.5 F7200 ; move to start
G1 X47 Y-0.5 F7200 ; move to start
G1 X49 Y-0.5 E0.1706 F2400 ; 2
G1 X49 Y-2.5 E0.1706 F2400 ; 2
G1 X47 Y-2.5 E0.1706 F2400 ; 2
G1 X47 Y-4.5 E0.1706 F2400 ; 2
G1 X49 Y-4.5 E0.1706 F2400 ; 2
G1 E-1.2 F2100 ; retract
G1 X50 Y-4.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X50 Y-2.5 F7200 ; move to start
G1 X50 Y-0.5 F7200 ; move to start
G1 X50 Y-2.5 E0.1706 F2400 ; 4
G1 X52 Y-2.5 E0.1706 F2400 ; 4
G1 X52 Y-0.5 F7200 ; move to start
G1 X52 Y-2.5 E0.1706 F2400 ; 4
G1 X52 Y-4.5 E0.1706 F2400 ; 4
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y5.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y5.5 E0.1706 F2400 ; 0
G1 X45 Y7.5 E0.1706 F2400 ; 0
G1 X45 Y9.5 E0.1706 F2400 ; 0
G1 X43 Y9.5 E0.1706 F2400 ; 0
G1 X43 Y7.5 E0.1706 F2400 ; 0
G1 X43 Y5.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y5.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y5.9 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y5.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X47 Y7.5 F7200 ; move to start
G1 X47 Y9.5 F7200 ; move to start
G1 X49 Y9.5 E0.1706 F2400 ; 2
G1 X49 Y7.5 E0.1706 F2400 ; 2
G1 X47 Y7.5 E0.1706 F2400 ; 2
G1 X47 Y5.5 E0.1706 F2400 ; 2
G1 X49 Y5.5 E0.1706 F2400 ; 2
G1 E-1.2 F2100 ; retract
G1 X50 Y5.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X50 Y7.5 F7200 ; move to start
G1 X52 Y7.5 E0.1706 F2400 ; 8
G1 X52 Y5.5 E0.1706 F2400 ; 8
G1 X50 Y5.5 E0.1706 F2400 ; 8
G1 X50 Y7.5 E0.1706 F2400 ; 8
G1 X50 Y9.5 E0.1706 F2400 ; 8
G1 X52 Y9.5 E0.1706 F2400 ; 8
G1 X52 Y7.5 E0.1706 F2400 ; 8
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y15.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y15.5 E0.1706 F2400 ; 0
G1 X45 Y17.5 E0.1706 F2400 ; 0
G1 X45 Y19.5 E0.1706 F2400 ; 0
G1 X43 Y19.5 E0.1706 F2400 ; 0
G1 X43 Y17.5 E0.1706 F2400 ; 0
G1 X43 Y15.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y15.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y15.9 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y15.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X47 Y17.5 F7200 ; move to start
G1 X47 Y19.5 F7200 ; move to start
G1 X49 Y19.5 E0.1706 F2400 ; 3
G1 X49 Y17.5 E0.1706 F2400 ; 3
G1 X49 Y15.5 E0.1706 F2400 ; 3
G1 X47 Y15.5 E0.1706 F2400 ; 3
G1 X47 Y17.5 F7200 ; move to start
G1 X49 Y17.5 E0.1706 F2400 ; 3
G1 E-1.2 F2100 ; retract
G1 X50 Y15.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X50 Y17.5 F7200 ; move to start
G1 X50 Y19.5 F7200 ; move to start
G1 X52 Y19.5 E0.1706 F2400 ; 2
G1 X52 Y17.5 E0.1706 F2400 ; 2
G1 X50 Y17.5 E0.1706 F2400 ; 2
G1 X50 Y15.5 E0.1706 F2400 ; 2
G1 X52 Y15.5 E0.1706 F2400 ; 2
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
G1 X43 Y25.5 F7200 ; move to start
G1 Z0.3 F2400 ; zHop
G1 E1.2 F1800 ; un-retract
G1 X45 Y25.5 E0.1706 F2400 ; 0
G1 X45 Y27.5 E0.1706 F2400 ; 0
G1 X45 Y29.5 E0.1706 F2400 ; 0
G1 X43 Y29.5 E0.1706 F2400 ; 0
G1 X43 Y27.5 E0.1706 F2400 ; 0
G1 X43 Y25.5 E0.1706 F2400 ; 0
G1 E-1.2 F2100 ; retract
G1 X46 Y25.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X46 Y25.9 E0.0341 F2400 ; dot
G1 E-1.2 F2100 ; retract
G1 X47 Y25.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X47 Y27.5 F7200 ; move to start
G1 X47 Y29.5 F7200 ; move to start
G1 X49 Y29.5 E0.1706 F2400 ; 3
G1 X49 Y27.5 E0.1706 F2400 ; 3
G1 X49 Y25.5 E0.1706 F2400 ; 3
G1 X47 Y25.5 E0.1706 F2400 ; 3
G1 X47 Y27.5 F7200 ; move to start
G1 X49 Y27.5 E0.1706 F2400 ; 3
G1 E-1.2 F2100 ; retract
G1 X50 Y25.5 F7200 ; move to start
G1 E1.2 F1800 ; un-retract
G1 X50 Y27.5 F7200 ; move to start
G1 X52 Y27.5 E0.1706 F2400 ; 6
G1 X52 Y25.5 E0.1706 F2400 ; 6
G1 X50 Y25.5 E0.1706 F2400 ; 6
G1 X50 Y27.5 E0.1706 F2400 ; 6
G1 X50 Y29.5 E0.1706 F2400 ; 6
G1 X52 Y29.5 E0.1706 F2400 ; 6
G1 E-1.2 F2100 ; retract
G1 Z0.4 F2400 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X0 Y0 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;
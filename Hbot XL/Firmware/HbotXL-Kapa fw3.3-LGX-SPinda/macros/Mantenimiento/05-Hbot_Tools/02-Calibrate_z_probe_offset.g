; Variables
;var midX=((move.axes[0].max-move.axes[0].min)/2)-sensors.probes[0].offsets[0])
;var midY=((move.axes[1].max-move.axes[1].min)/2)-sensors.probes[0].offsets[1])
;
if global.probetype == 1 										; Z-Probe IR mini
	G31 P500 Z0 										; Reset Z trigger height to 0mm
elif global.probetype == 2 	|| 	global.probetype == 3	
	G31 P1000 Z0 		
;end if
M290 R0 S0 												; Reset babystepping
G29 S2 													; Clear bed mesh
M561                  									; clear any existing bed transform
M208 S1 Z-5 											; allow movement below Z0 reaching -5mm below Z0
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
        G28												; home all axis without mesh bed level
G1 X{global.midX} Y{global.midY} Z10 F6000 									; Move close to the bed
G30 													; Probe to find a rough Z 0mm
G1 Z1 F3000 									; Move the nozzle to Z 1mm slowly
G92 Z3.0 												; Set the Z height to 3mm, allowing moves below 0
M291 P"Lower the nozzle to until it touches a 0.10mm shim. Click to continue." S2 Z1
G92 Z0													; Define this point as 0mm
G1 Z5 F3000										; Move the probe to Z 5mm
G30 S-3 												; Probe and set the trigger height
G1 Z20 													; Raise Z to 10mm
M291 P"Do you want to save new offset to config-override?. Click to continue." S3
M500 P31												; save Z offset to config-override.g
M501													; load values from config-override.g
M208 S1 Z0 												; disallow movement below Z0
; Variables
var midXP=((move.axes[0].max-move.axes[0].min)/2))
var midYP=((move.axes[1].max-move.axes[1].min)/2))


M291 P"Probe will be tested 10 times and return mean and standard deviation. Ok or Cancel?" R"WARNING" S3 ; User must click OK or cancel.
M561                    ; clear any bed transform

; If the printer hasn't been homed, home it and don´t go down
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
 G28
M401
G30 P0 X{global.midXP} Y{global.midYP} Z-9999
G30 P1 X{global.midXP} Y{global.midYP} Z-9999
G30 P2 X{global.midXP} Y{global.midYP} Z-9999
G30 P3 X{global.midXP} Y{global.midYP} Z-9999
G30 P4 X{global.midXP} Y{global.midYP} Z-9999
G30 P5 X{global.midXP} Y{global.midYP} Z-9999
G30 P6 X{global.midXP} Y{global.midYP} Z-9999
G30 P7 X{global.midXP} Y{global.midYP} Z-9999
G30 P8 X{global.midXP} Y{global.midYP} Z-9999
G30 P9 X{global.midXP} Y{global.midYP} Z-9999 S-1
M402
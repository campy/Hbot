; Configuration file for Duet WiFi (firmware version 1.21)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool on Tue Oct 23 2018 00:51:50 GMT+0200 (hora de verano de Europa central)

; Logs
M929 P"eventlog.txt" S1         ; Guarda un log de lo que pasa con la placa eventlog.txt

; General preferences
G90                            ; Send absolute coordinates...
M83                            ; ...but relative extruder moves

; Network
M550 P"XL Hbot 3DE"                ; Set machine name
M552 S1                        ; Enable network
M586 P0 S1                     ; Enable HTTP
M586 P1 S0                     ; Disable FTP
M586 P2 S0                     ; Disable Telnet

; Drives
M669 K1                        ; CoreXY kinematic
M569 P0 S1                     ; Drive 0 goes forwards
M569 P1 S0                     ; Drive 1 goes forwards
M569 P2 S1                     ; Drive 2 goes forwards
M569 P3 S0                     ; Drive 3 goes forwards
M350 X16 Y16 Z16 E16 I1        ; Configure microstepping with interpolation
M92 X80 Y80 Z400 E400       ; Set steps per mm
M566 X500 Y500 Z60 E600        ; Set maximum instantaneous speed changes (mm/min)
M203 X18000 Y18000 Z800 E4800    ; Set maximum speeds (mm/min)
M201 X2000 Y2000 Z400 E1200     ; Set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 E760 I30   ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                        ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1               ; Set axis minima
M208 X325 Y325 Z400 S0         ; Set axis maxima

; Endstops
M574 X1 Y2 S0                  ; Set active low endstops
M591 D0 P2 C2 S0                  ; Filament Sensor

; Z-Probe
M574 Z1 S2                     ; Set endstops controlled by probe
M558 P1 H5 F200 T9000 I0 R0.5    ; Set Z probe type mini ir sensor
G31 P500 X18 Y-38 Z1.35       ; Set Z probe trigger value, offset and trigger height
M557 X20:315 Y1:325 S140

M307 H0 B0 S1.00               ; Disable bang-bang mode for the bed heater and set PWM limit
M305 P0 T100000 B3950 C0 R4700 ; Set thermistor + ADC parameters for heater 0
M143 H0 S120                   ; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B4725 C7.06e-8 R4700 ; Set thermistor + ADC parameters for heater 1
M143 H1 S290                   ; Set temperature limit for heater 1 to 280C
M570 H1 P10 T50


; Fans
M106 P0 S0 I0 F500 H-1         ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T99      ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S1 I0 F500 H1 T99      ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Tools
M563 P0 D0 H1                  ; Define tool 0
G10 P0 X0 Y0 Z0                ; Set tool 0 axis offsets
G10 P0 R0 S0                   ; Set initial tool 0 active and standby temperatures to 0C


M911 S21.0 R23.0 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000"            ;Resume after power cut
M912 P0 S-7                   ;Cpu temp correction
M501                           ; Save eprom

; Automatic saving after power loss is not enabled

; Custom settings are not configured
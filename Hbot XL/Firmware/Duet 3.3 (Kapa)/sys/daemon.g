; daemon.g
; check temps every 10 seconds when not printing (i.e. Idle) and shut down if exceed max temps.  RRF checks when printing, but not when idle.
; not all commands are required.  e.g. shutting off power by dropping a relay negates need for M112, M81 - un-comment or adjust as required for your configuration
; assumes that the thermistor for each heater is monitor # zero as there is no way to do nested loops using "iterations" as identifier in both loops until variables are available in the object model
; no checking done for null values! - 
 
while global.blockDaemon = true
          G4 S1000
		  
if state.status="idle"
	while iterations < #heat.heaters ; 
		if heat.heaters[iterations].current > heat.heaters[iterations].monitors[0].limit ; un-comment when ready to go live
		;if heat.heaters[iterations].current > 50 ; uncomment for testing, comment out when going live
			M291 P"Heater over max temp" R"Temp Error!" S1 T0 ; Display message for testing
			M112 ; Do emergency stop
			;M81  ; Turn PS_ON (ATX) off
			;M42 P5 S1 ; Set GPIO 5 (output) high to activate alarm relay. GPIO pin must be configured using M950
			;M42 P6 S0 ; Set GPIO 6 (output) low to cut power. GPIO pin must be configured using M950
 
;if sensors.gpIn[6].value=1 ; check state of connected smoke detector - GPIO pin must be configured using M950
	;M291 P"Smoke detector active!" R"I'm on fire!" S1 T0 ; Display Nikki Lauder message for testing
	;M112 ; Do emergency stop
	;M81  ; Turn PS_ON (ATX) off
	;M42 P5 S1 ; Set GPIO 5 (output) high to activate alarm relay
	;M42 P6 S0 ; Set GPIO 6 (output) low to cut power	
		
G4 S10 ; wait 10 seconds before next check	(adjust S parameter as you see fit)
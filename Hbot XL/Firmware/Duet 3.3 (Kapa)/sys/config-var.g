; Model type XL or ST
if {param.S}==1 || {param.S}==2
	if {param.S}==1					; XL
		global sizeX = 330
		global sizeY = 325
		global posZ1 = -59.13
		global posZ2 = 437.87
		global posY = 164
	elif {param.S}==2				; ST
		global sizeX = 310
		global sizeY = 210
		global posZ1 = -55.50		
		global posZ2 = 411.50		
		global posY = 144			
	
	; end if bedsize
	; ================================================================================
	; Varibales definition
	if global.probetype == 1 										; Z-Probe IR mini
		global offsetPX = 18		
		global offsetPY = -38	
		global tiltZ1=18
		if {param.S}=1
			global tiltZ2=304
		elif {param.S}=2
			global tiltZ2=292
		; end if
		global meshmaxY= {global.sizeY-abs(global.offsetPY)}
	elif global.probetype == 2 										; Z-Probe Superpinda
		global offsetPX = -25		
		global offsetPY = 0	
		global tiltZ1=30
		if {param.S}=1
			global tiltZ2=295
		elif {param.S}=2
			global tiltZ2=280
		global meshmaxY= {global.sizeY-(abs(global.offsetPY)+10)}
	elif global.probetype == 3                                       ; 10mm Inductive
		global offsetPX = -25
		global offsetPY = 3
		global tiltZ1=30
		if {param.S}=1
			global tiltZ2=295
		elif {param.S}=2
			global tiltZ2=272
		; end if	
		global meshmaxY= {global.sizeY-(abs(global.offsetPY)+7)}
	; end if variable definition
	; Mid Points and Ztilt Points
	global midX={(global.sizeX/2)-global.offsetPX}
	global midY={(global.sizeY/2)-global.offsetPY}
	global midXP={global.sizeX/2}
	global midYP={global.sizeY/2}
	global meshmaxX= global.tiltZ2
	global blockDaemon=false
; end if
;==================================================================================================
; Locate LeadScrews
if {param.L}==1 || {param.L}==2
	if {param.L}==1					; XL
		M671 X-59.13:437.87 Y164:164 S5
	elif {param.L}==2				; ST
		M671 X-55.50:411.50 Y144:144 S5	
	; end if bedsize
;==================================================================================================
; Probe Setup
if {param.Z}==1 || {param.Z}==2 || {param.Z}==3						; Probe type IR mini
	if global.probetype == 1 										; Z-Probe IR mini
		M558 P1 C"zprobe.in" H3 F600 T9000 A3 S0.03        ; Set Z probe type mini ir sensor
		G31 P500 X{global.offsetPX} Y{global.offsetPY} Z0 		; set Z probe trigger value, offset and trigger height
	elif global.probetype == 2 										; Z-Probe Superpinda
		M558 P5 C"^zprobe.in" H1.5 F600 T9000 A3 S0.03              ; set z probe to SuperPINDA
		G31 P1000 X{global.offsetPX} Y{global.offsetPY} Z0 		; set Z probe trigger value, offset and trigger height   ;Inductivo
	elif global.probetype == 3                                      ; Z-Probe 10mm Inductive
		M558 P5 C"!zprobe.in" H3 F600 T9000 A3 S0.03       ; Set Z probe type 10mm Inductive
		G31 P1000 X{global.offsetPX} Y{global.offsetPY} Z0      ; set Z probe trigger value, offset and trigger height   ;Inductivo
	; end if
	if global.meshP==3 || global.meshP==5 || global.meshP==7 || global.meshP==9 || global.meshP==11  
		M557 X20:{global.meshmaxX} Y20:{global.meshmaxY} P{global.meshP}				; define mesh grid defined by global.meshP
	else
		M557 X20:{global.meshmaxX} Y20:{global.meshmaxY} P3				; Minimun mesh grip in case of error
	; end inf
; end if
;===================================================================================================
; --------------- Pin/connection Mapping Legend -------------------
; Duet 2 and DueX heater outputs
; ------------------------------------------------------------------
; bedheat 						- Bed Heater
; e0heat 						- Hotend Heater
; e1heat 						- Led control ON/OFF
; exp.heater3
; exp.heater4
; exp.heater5
; exp.heater6
; exp.heater7
; ------------------------------------------------------------------
; Duet 2 and DueX temperature inputs
; ------------------------------------------------------------------
; bedtemp						- Bed thermistor
; e0temp						- Hotend thermistor
; e1temp
; e2temp
; e3temp
; e4temp
; e5temp
; e6temp
; ------------------------------------------------------------------
; Duet 2 and DueX fan outputs
; Note: the duex.fan pins cannot be used to control a laser.
; ------------------------------------------------------------------
; fan0							 - Part Coooling
; fan1							 - Hotend
; fan2							 - Chamber fan 
; duex.fan3
; duex.fan4
; duex.fan5
; duex.fan6
; duex.fan7
; duex.fan8
; ------------------------------------------------------------------
; Endstop inputs
; ------------------------------------------------------------------
; xstop							- X endstop
; ystop							- X endstop
; zstop
; e0stop
; e1stop
; exp.e2stop
; exp.e3stop
; exp.e4stop
; exp.e5stop
; exp.e6stop
; ------------------------------------------------------------------
; Misc
; Note: the duex.gp pins cannot be used to control a laser.
; ------------------------------------------------------------------
; zprobe.in						- mini IR sensor PROBE
; zprobe.mod
; duex.cs5
; connlcd.encb
; connlcd.enca
; connsd.encsw
; exp.pb6

; -----------------------------------------------------------------
;


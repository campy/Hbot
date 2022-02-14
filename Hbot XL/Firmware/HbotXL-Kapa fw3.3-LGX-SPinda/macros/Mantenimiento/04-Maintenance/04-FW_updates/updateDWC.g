; =========================================================================================================
;
; update Duet2 Firmware
;
; make sure that you have uploaded the current version of DuetWebControl-SD.zip to sys
; Duet2CombinedIAP.bin must be present as well
;
;
; =========================================================================================================
;
M291 P"Updating Duet Web Control (DWC). Press OK to continue or CANCEL to abort." R"Make sure you loaded DuetWebControl-SD.zip to sys folder." S3
M997 S2
;
; =========================================================================================================

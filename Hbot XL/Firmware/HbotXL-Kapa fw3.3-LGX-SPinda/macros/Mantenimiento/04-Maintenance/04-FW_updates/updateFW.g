; =========================================================================================================
;
; update Duet2 Firmware
;
; make sure that you have uploaded the current version of Duet2CombinedFirmware.bin to sys
; Duet2CombinedIAP.bin must be present as well
;
;
; =========================================================================================================
;
M291 P"Updating firmware for Duet2Wifi. Press OK to continue or CANCEL to abort." R"Make sure you loaded Duet2CombinedFirmware.bin to sys folder." S3
M997 S0
;
; =========================================================================================================

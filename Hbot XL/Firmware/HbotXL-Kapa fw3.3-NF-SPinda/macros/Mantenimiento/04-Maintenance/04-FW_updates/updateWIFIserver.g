; =========================================================================================================
;
; update Panel Due Firmware
;
; make sure that you have uploaded the current version of WifiServer.bin to sys
;
; =========================================================================================================
;
M291 P"Updating firmware for PanelDue. Press OK to continue or CANCEL to abort." R"Make sure you loaded WifiServer.bin to sys folder." S3
M997 S1
;
; =========================================================================================================
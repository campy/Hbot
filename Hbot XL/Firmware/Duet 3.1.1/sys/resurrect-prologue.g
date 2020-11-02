M116            ;Wait for temp
G28 X Y             ;home 
G28 Z
M83             ;relative extrusion
G1 E2 F3600     ; undo retraction
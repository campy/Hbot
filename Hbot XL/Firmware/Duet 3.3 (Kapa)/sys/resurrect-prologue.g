M116            ;Wait for temp
G28 X Y             ;home 
M83             ;relative extrusion
G1 E2 F3600     ; undo retraction
M291 S3 R"RESUME!!!!" P"Clean Nozzle NOW!!!! then press OK"
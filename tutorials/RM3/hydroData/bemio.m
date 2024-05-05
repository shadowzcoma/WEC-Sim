hydro = struct();

hydro = readWAMIT(hydro,'test99.out',[]);
hydro = radiationIRF(hydro,60,[],[],[],[]);
hydro = radiationIRFSS(hydro,[],[]);
hydro = excitationIRF(hydro,157,[],[],[],[]);
writeBEMIOH5(hydro)
plotBEMIO(hydro)
enfermedad(gripe).
enfermedad(rubeola).
enfermedad(malaria).
enfermedad(hepatitis).
enfermedad(tuberculosis).
enfermedad(anemia).
sintomade(nauseas, hepatitis). 
sintomade(diarrea, hepatitis). 
sintomade(ictericia, hepatitis).
sintomade(tos, gripe).
sintomade(cansancio, gripe).
sintomade(fiebre, gripe).
sintomade(dolorcabeza, gripe).
sintomade(cansancio, anemia).
sintomade(apatia, anemia).
sintomade(nausea, anemia).
sintomade(tos, tuberculosis).
sintomade(cansancio, tuberculosis).
sintomade(fiebre, tuberculosis).
sintomade(escalofrios, tuberculosis).
sintomade(escalofrios, malaria).
sintomade(fiebre , malaria).
sintomade(diarrea , malaria).
sintomade(ictericia, malaria).
sintomade(fiebre, rubeola).
sintomade(jaqueca, rubeola).
sintomade(secrecion, rubeola).
buscar([], E , 0).
buscar(X , E , 1) :- sintomade(X, E).
buscar([X|Xs] , E , P) :- enfermedad(E) , buscar(X, E , S1) , buscar(Xs , E ,S2) , P is S1 + S2.
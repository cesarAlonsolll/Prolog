padrede('juan','maria').
padrede('marcela','carlos').
padrede('pablo','juan').
padrede('pablo','marcela').
padrede('carmen','marcela').
padrede('carlos','debora').
padrede('pamela','maria').
padrede('pamela','juan').
hijode(A,B):-padrede(B,A).
abuelode(A,B):-padrede(A,C),padrede(C,B).
hermanode(A,B):-padrede(C,A),padrede(C,B),A\==B.
tiode(A,B):-hermanode(A,C),padrede(C,B).
nietode(A,B):-hijode(A,C),hijode(C,B).
esposode(A,B):-padrede(A,C),padrede(B,C),A\==B.
esfeliz(X):- not(esposode(X,_)).
familiarde(A,B):-padrede(A,B).
familiarde(A,B):-abuelode(A,B).
familiarde(A,B):-hermanode(A,B).
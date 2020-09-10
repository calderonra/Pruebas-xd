juego(gtav).
juego(fallguys).
juego(doom).
juego(amongus).
juego(clubpenguin).
juego(mortalkombat).
juego(portal).
juego(destiny).
juego(valorant).

tiene(raul,doom).
tiene(raul,portal).
tiene(olmedo,fallguys).
tiene(olmedo,valorant).
tiene(vladi,mortalkombat).

comprar_juego(X):-
not(tiene(_,X)),juego(X).


sexo(masculino).
sexo(femenino).

persona(felipe,masculino).
persona(joss,femenino).
persona(mashela,femenino).
persona(moy,masculino).
persona(wembes,masculino).
persona(xandra,femenino).

ama(felipe,joss).
ama(joss,felipe).
ama(mashela,moy).
ama(moy,mashela).
ama(wembes,xandra).
ama(xandra,wembes).

ama(felipe,wembes).
ama(wembes,felipe).

se_pueden_casar(X,Y):-
not(==(persona(X),persona(Y))),
ama(X,Y),ama(Y,X).



enemigos(mayas,espanoles).
enemigos(espanoles,mayas).
enemigos(espanoles,francos).
enemigos(francos,espanoles).

aliado(X,Y,Z):-
enemigos(X,Y),enemigos(Y,X),enemigos(Y,Z),not(enemigos(X,Z)).

calorias(paella,200).
calorias(gazpacho,150).
calorias(consome,300).




sumatoria(0, 0):- !.

sumatoria(X, Y):-
          X1 is X-1,
          sumatoria(X1, Y1),
          Y is Y1+1/X.

paso(1,medicion).
paso(2,corte).
paso(3,moldeado).
paso(4,pulido).
paso(5,montaje).
paso(6,empacado).
paso(7,almacenaje).


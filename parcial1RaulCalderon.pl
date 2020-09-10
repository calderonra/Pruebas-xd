%RaulCalderon00004017


%Ejercicio1
gana(piedra,tijera).
gana(tijera,papel).
gana(papel,piedra).

jugar(X,Y,Z,A):-
    gana(Y,A),write('Gana'),write(X), !.
jugar(X,Y,Z,A):-
    gana(A,Y),write('Gana'),write(Z), !.
jugar(X,Y,Z,A):-
    gana(A,Y),write('EMPATE'), !.



%Ejercicio2
f(X,Y):-X<2,Y is 2-X.
f(X,Y):-X>2,Y is X-2.
f(2,Y):- 
    =(Y,'indeterminado'), !.


%Ejercicio3
busqueda(Cant,Num,_,Contar):-
    is(NumNuevo,mod(Cant,10)),
    not(=:=(Num,NumNuevo)),
    is(CanNueva,//(Cant,10)),
    is(Contar1,+(Contar,1)),
    busqueda(CanNueva,Num,_,Contar1).



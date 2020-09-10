mcd(Mayor,Menor,Menor):-
    is(Residuo,mod(Mayor,Menor)),
    =:=(Residuo,0),
    !.
mcd(Mayor,Menor,MCD):-
    is(Residuo,mod(Mayor,Menor)),
    >(Residuo,0),
    mcd(Menor,Residuo,MCD).



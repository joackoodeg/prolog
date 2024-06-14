% Predicado principal
ordenar(Lista, ListaOrdenada) :-
    ordenar_recursivo(Lista, [], ListaOrdenada).

% Caso base: cuando la lista original está vacía, la lista acumulada es la lista ordenada
ordenar_recursivo([], ListaOrdenada, ListaOrdenada).

% Caso recursivo: insertar el primer elemento en la lista acumulada ordenada
ordenar_recursivo([Cabeza|Cola], Acumulado, ListaOrdenada) :-
    insertar(Cabeza, Acumulado, NuevoAcumulado),
    ordenar_recursivo(Cola, NuevoAcumulado, ListaOrdenada).

% Predicado para insertar un elemento en la lista ordenada de manera recursiva
insertar(X, [], [X]).
insertar(X, [Y|Resto], [X,Y|Resto]) :-
    X =< Y.
insertar(X, [Y|Resto], [Y|NuevoResto]) :-
    X > Y,
    insertar(X, Resto, NuevoResto).

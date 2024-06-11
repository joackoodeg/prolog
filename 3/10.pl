% Predicado principal para ordenar una lista
ordenar(Lista, ListaOrdenada) :-
    ordenar_insercion(Lista, [], ListaOrdenada).

% Caso base: Una lista vacía está ordenada
ordenar_insercion([], ListaOrdenada, ListaOrdenada).

% Caso recursivo: Insertar el primer elemento en la lista ordenada acumulada
ordenar_insercion([Cabeza|Cola], ListaAcumulada, ListaOrdenada) :-
    insertar_ordenado(Cabeza, ListaAcumulada, NuevaListaAcumulada),
    ordenar_insercion(Cola, NuevaListaAcumulada, ListaOrdenada).

% Predicado para insertar un elemento en una lista ordenada
insertar_ordenado(X, [], [X]).
insertar_ordenado(X, [Y|Resto], [X, Y|Resto]) :-
    X =< Y.
insertar_ordenado(X, [Y|Resto], [Y|NuevoResto]) :-
    X > Y,
    insertar_ordenado(X, Resto, NuevoResto).

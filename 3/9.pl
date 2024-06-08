% Caso base: insertar un elemento en una lista vacía resulta en una lista que solo contiene ese elemento.
insertar(Elem, [], [Elem]).

% Caso cuando el elemento a insertar es menor o igual al primer elemento de la lista.
insertar(Elem, [X|Xs], [Elem, X|Xs]) :-
    Elem =< X.

% Caso recursivo: mantener el primer elemento y continuar con la inserción en el resto de la lista.
insertar(Elem, [X|Xs], [X|Resultado]) :-
    Elem > X,
    insertar(Elem, Xs, Resultado).

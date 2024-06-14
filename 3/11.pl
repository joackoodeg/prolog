% Predicado principal
aplanar(Lista, ListaPlana) :-
    aplanar_recursivo(Lista, [], ListaPlana).

% Caso base: la lista vacía resulta en una lista plana vacía
aplanar_recursivo([], Acumulador, Acumulador).

% Caso para un elemento que no es lista: lo agregamos al acumulador
aplanar_recursivo([Cabeza|Cola], Acumulador, ListaPlana) :-
    \+ is_list(Cabeza), % Cabeza no es una lista
    append(Acumulador, [Cabeza], NuevoAcumulador),
    aplanar_recursivo(Cola, NuevoAcumulador, ListaPlana).

% Caso para un elemento que es lista: aplanamos esa lista
aplanar_recursivo([Cabeza|Cola], Acumulador, ListaPlana) :-
    is_list(Cabeza), % Cabeza es una lista
    aplanar_recursivo(Cabeza, Acumulador, AcumuladorExtendido),
    aplanar_recursivo(Cola, AcumuladorExtendido, ListaPlana).

% Predicado para concatenar listas
append([], Lista, Lista).
append([Cabeza|Cola], Lista, [Cabeza|Resultado]) :-
    append(Cola, Lista, Resultado).

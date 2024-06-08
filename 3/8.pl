% Caso base: la profundidad de un árbol vacío es 0.
profundidad([], 0).

% Caso cuando se encuentra una hoja (un solo elemento).
profundidad([X], 1) :- atomic(X).
% si X es un término atómico devuelve 1

% Caso recursivo: calcular la profundidad de los subárboles izquierdo y derecho,
% y tomar el máximo de ambas profundidades más 1.
profundidad([Izquierdo, _, Derecho], Profundidad) :-
    profundidad(Izquierdo, ProfundidadIzquierdo),
    profundidad(Derecho, ProfundidadDerecho),
    Profundidad is max(ProfundidadIzquierdo, ProfundidadDerecho) + 1.

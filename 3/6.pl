% Caso base: si ambas listas están vacías, la suma también es una lista vacía.
suma_lista([], [], []).

% Caso recursivo: si ambas listas tienen al menos un elemento.
suma_lista([X|Xs], [Y|Ys], [Z|Zs]) :-
    % Sumamos los elementos correspondientes de las dos listas.
    Z is X + Y,
    % Llamada recursiva para procesar el resto de las listas.
    suma_lista(Xs, Ys, Zs).

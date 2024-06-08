% Caso base: la suma de una lista vacía es 0.
suma([], 0).

% Caso recursivo: la lista no está vacía.
suma([X|Xs], Resultado) :-
    % Sumar los números en la cola de la lista recursivamente.
    suma(Xs, SumaRestante),
    % La suma total es el primer elemento más la suma de los elementos restantes.
    Resultado is X + SumaRestante.
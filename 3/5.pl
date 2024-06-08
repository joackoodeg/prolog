% Caso base: la lista está vacía, por lo que la lista de positivos también es vacía.
positivos([], []).

% Caso recursivo: la lista no está vacía.
positivos([X|Xs], [X|PositivosRestantes]) :-
    % Si el número es positivo, se agrega a la lista de positivos.
    X > 0,
    % Llamada recursiva para filtrar los positivos en la cola de la lista.
    positivos(Xs, PositivosRestantes).

% Caso recursivo: la lista no está vacía, pero el primer elemento no es positivo.
positivos([_|Xs], Positivos) :-
    % Llamada recursiva para filtrar los positivos en la cola de la lista.
    positivos(Xs, Positivos).

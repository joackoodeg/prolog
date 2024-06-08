% Caso base: el factorial de 0 es 1
factorial(0, 1).

% Regla para calcular el factorial de un número N
factorial(N, Result) :-
    % Validar que N sea mayor o igual a cero
    N >= 0,
    % Calcular N-1
    N1 is N - 1,
    % Llamada recursiva para calcular el factorial de N-1
    factorial(N1, Result1),
    % Calcular el resultado final
    Result is N * Result1.

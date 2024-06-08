% Caso base: la lista está vacía, por lo que la cantidad de elementos es 0.
cantidad([], 0).

% Caso recursivo: la lista no está vacía.
cantidad([_|T], Elementos) :-
    % Contar los elementos de la cola de la lista recursivamente.
    cantidad(T, ElementosRestantes),
    % La cantidad de elementos es la cantidad de elementos en la cola más 1.
    Elementos is ElementosRestantes + 1.
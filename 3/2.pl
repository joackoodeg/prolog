% Caso base: la lista está vacía, por lo que el contador es 0.
contar(_, [], 0).

% Caso en el que el elemento coincide con la cabeza de la lista.
contar(X, [X|T], Cantidad) :-
    % Recursivamente contar las apariciones del elemento en la cola de la lista.
    contar(X, T, CantidadRestante),
    % Incrementar el contador en 1.
    Cantidad is CantidadRestante + 1.

% Caso en el que el elemento no coincide con la cabeza de la lista.
contar(X, [_|T], Cantidad) :-
    % Recursivamente contar las apariciones del elemento en la cola de la lista.
    contar(X, T, Cantidad).

% Explicacion:

%[X|T]: Esta notación se utiliza para descomponer una lista en su primer 
%elemento X (cabeza) y el resto de la lista T (cola). 
%Es decir, X es el primer elemento de la lista y T es la lista 
%que queda después de quitar X

%[_|T]: Similar a [X|T], esta notación se utiliza cuando no nos importa 
%el valor del primer elemento de la lista, por lo que se usa un guion 
%bajo (_) para indicar que no estamos interesados en ese valor. 
%T representa el resto de la lista después de omitir el primer elemento.
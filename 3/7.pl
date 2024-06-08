% Caso base: si la lista de entrada esta vacia, la lista resultante tambien esta vacia.
eliminar_dup([], []).

% Caso recursivo: si la lista no esta vacia.
eliminar_dup([X|Xs], SinDup) :-
    % Verificamos si el elemento X no esta presente en la lista resultante.
    \+ member(X, Xs),
    % \+ que se lee como "no". 
    % En conjunto con member(X, Xs), se traduce como "X no es miembro de Xs".
    
    % Si X no esta en la lista resultante, lo agregamos a la lista final.
    eliminar_dup(Xs, RestoSinDup),
    SinDup = [X|RestoSinDup].

% Caso recursivo: si la lista no esta vacia y el primer elemento ya esta en la lista resultante.
eliminar_dup([_|Xs], SinDup) :-
    % Si el primer elemento ya esta en la lista resultante, simplemente continuamos con el resto de la lista.
    eliminar_dup(Xs, SinDup).

% Definición de las entradas
entrada(ensalada).
entrada(sopa).
entrada(empanada).

% Definición de los platos principales
plato_principal(lomo_a_la_pimienta).
plato_principal(pollo_al_horno).
plato_principal(pasta_carbonara).

% Definición de los postres
postre(flan).
postre(helado).
postre(tarta_de_manzana).

% Predicado carta/3 que combina todas las entradas, platos principales y postres
carta(X, Y, Z) :-
    entrada(X),
    plato_principal(Y),
    postre(Z).

% Consulta para verificar las combinaciones

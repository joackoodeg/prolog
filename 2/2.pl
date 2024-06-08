% Definición de personas
hombre(juan).
hombre(pedro).
hombre(raul).
hombre(carlos).
hombre(jose).
hombre(alberto).
hombre(manuel).
hombre(pablo).
hombre(tomas).

mujer(maria).
mujer(ana).
mujer(luisa).
mujer(carmen).
mujer(laura).
mujer(julia).
mujer(marta).
mujer(sara).

% Definición de progenitores
progenitor(juan, pedro).
progenitor(juan, ana).
progenitor(maria, pedro).
progenitor(maria, ana).

progenitor(pedro, carlos).
progenitor(pedro, luisa).
progenitor(ana, jose).
progenitor(ana, carmen).

progenitor(raul, carlos).
progenitor(laura, luisa).
progenitor(jose, alberto).
progenitor(carmen, manuel).

progenitor(alberto, pablo).
progenitor(alberto, julia).
progenitor(marta, pablo).
progenitor(marta, julia).

progenitor(manuel, tomas).
progenitor(sara, tomas).

% Reglas para relaciones familiares
padre(X, Y) :- progenitor(X, Y), hombre(X).
madre(X, Y) :- progenitor(X, Y), mujer(X).

abuelo(X, Y) :- progenitor(X, Z), progenitor(Z, Y), hombre(X).
abuela(X, Y) :- progenitor(X, Z), progenitor(Z, Y), mujer(X).

hermano(X, Y) :- progenitor(P, X), progenitor(P, Y), hombre(P), progenitor(M, X), progenitor(M, Y), mujer(M), X \= Y.
hermana(X, Y) :- progenitor(P, X), progenitor(P, Y), hombre(P), progenitor(M, X), progenitor(M, Y), mujer(M), X \= Y.

hermano_varon(X, Y) :- hermano(X, Y), hombre(Y).
hermana_mujer(X, Y) :- hermana(X, Y), mujer(Y).

sucesor(X, Y) :- progenitor(X, Y).
sucesor(X, Y) :- progenitor(X, Z), sucesor(Z, Y).

es_madre(X) :- madre(X, _).
es_padre(X) :- padre(X, _).

tia(X, Y) :- hermana(X, Z), progenitor(Z, Y).
yerno(X, Y) :- hombre(X), progenitor(X, Z), progenitor(Y, Z), mujer(Y).
nuera(X, Y) :- mujer(X), progenitor(X, Z), progenitor(Y, Z), hombre(Y).

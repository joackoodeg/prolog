% Definición de gustos literarios según profesión y género
gusta_profesion(abogado, novela_larga).
gusta_profesion(ingeniero, novela).
gusta_profesion(medico, novela).
gusta_profesion(contador_varon, libro_cuentos).
gusta_profesion(contador_varon, libro_poemas).

gusta_genero(mujer, libro_largo).

% Definición de personas y sus profesiones
persona(haydee).
mujer(haydee).
profesion(haydee, abogada).
profesion(haydee, ingeniera).

persona(tania).
mujer(tania).
profesion(tania, medica).

persona(livio).
varon(livio).
profesion(livio, contador).

persona(pedro).
varon(pedro).
profesion(pedro, abogado).

% Gustos específicos
gusta(livio, 'Rayuela').
gusta(pedro, libro_cuentos).

% Definición de libros
libro('Rayuela', novela_larga).
libro('Karamazov', novela_larga).
libro('Octaedro', libro_cuentos).
libro('Inventario', libro_poemas).
libro('Inventario', libro_largo).
libro('Leones', novela_corta).

% Reglas para determinar los gustos basados en profesión y género
gusta(X, Libro) :- profesion(X, abogada), libro(Libro, novela_larga).
gusta(X, Libro) :- profesion(X, ingeniera), libro(Libro, novela).
gusta(X, Libro) :- profesion(X, medica), libro(Libro, novela).
gusta(X, Libro) :- profesion(X, contador), varon(X), libro(Libro, libro_cuentos).
gusta(X, Libro) :- profesion(X, contador), varon(X), libro(Libro, libro_poemas).
gusta(X, Libro) :- mujer(X), libro(Libro, libro_largo).

% Predicados para responder consultas específicas
libro_corto(Libro) :- libro(Libro, novela_corta).
libro_corto(Libro) :- libro(Libro, libro_cuentos), not(libro(Libro, libro_largo)).

% Libro valioso
libro_valioso(Libro) :- setof(Persona, gusta(Persona, Libro), Personas), length(Personas, N), N >= 2.
% Explicacion:
% setof(Persona, gusta(Persona, Libro), Personas) significa: "Encuentra todas las personas Persona para las cuales gusta(Persona, Libro) es verdadero, y devuélvelas en una lista llamada Personas".
% En otras palabras, setof/3 genera una lista Personas que contiene a todas las personas a quienes les gusta el Libro.


% Ejemplo de consulta:
% ¿Qué libros le gustan a Livio?
% ?- gusta(livio, Libro).

% ¿A quiénes les gusta "Leones"?
% ?- gusta(Persona, 'Leones').

% ¿Qué libros cortos tiene registrado el programa?
% ?- libro_corto(Libro).

% ¿Qué libros son valiosos?
% ?- libro_valioso(Libro).

eliza :- writeln('Hola, mi nombre es Eliza, tu chatbot. Por favor, ingresa tu consulta usando solo minúsculas y sin punto al final:'),
   readln(Input),
   eliza(Input), !.

eliza(Input) :- 
    Input == ['adios'],
    writeln('Adios. Espero haberte podido ayudar.'), !.

eliza(Input) :- 
    Input == ['adios', '.'],
    writeln('Adios. Espero haberte podido ayudar.'), !.

eliza(Input) :- 
    template(Stim, Resp, IndStim), match(Stim, Input),
    % si he llegado aquí es que he hallado el template correcto:
    replace0(IndStim, Input, 0, Resp, R),
    writeln(R),
    readln(Input1),
    eliza(Input1), !.

template([eliza,  s(_), tiene, hijos, .], [flagfam], [1]).
template(_, ['Por favor, explica un poco más.'], []). 

padre(juan, luis).         
padre(juan, antonio).
padre(luis, carlos). 

familia(X, R) :- 
    findall(Y, padre(X, Y), Hijos),
    atomic_list_concat(Hijos, ', ', HijosStr),
    format(atom(R), 'Si los  hijos de ~w es/son: ~w.', [X, HijosStr]).

match([], []).
match([], _) :- true.

match([S|Stim], [I|Input]) :- 
    atom(S), % si I es un s(X) devuelve falso
    S == I,
    match(Stim, Input), !.

match([S|Stim], [_|Input]) :- 
    % I es un s(X), lo ignoro y continúo con el resto de la lista
    \+ atom(S),
    match(Stim, Input), !.

replace0([], _, _, Resp, R) :- 
    append(Resp, [], R), !.

replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagfam,
    familia(Atom, R).

replace0([I|Index], Input, N, Resp, R) :- 
    length(Index, M), M =:= 0,
    nth0(I, Input, Atom),
    select(N, Resp, Atom, R1), append(R1, [], R), !.

replace0([I|Index], Input, N, Resp, R) :- 
    nth0(I, Input, Atom),
    length(Index, M), M > 0,
    select(N, Resp, Atom, R1),
    N1 is N + 1,
    replace0(Index, Input, N1, R1, R), !.


eliza:-	writeln('Hola , mi nombre es  Eliza tu  chatbot,
	por favor ingresa tu consulta,
	usar solo minúsculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.

template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).
template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buendia, ',', mi, nombre, es, s(_), '.'], ['Buendia', 'Como', estas, tu, 0, '?'], [5]).
template([hola, _], ['Hola', 'como', estas, tu, '?'], []).
template([buendia, _], ['Buendia', 'Como', estas, tu, '?'], []).
template([yo, s(_), yo, soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [why, do, you, 0, me ,'?'], [1]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).

% New Templates
template([mi, cumple, es, el, _], ['Exelente', 'yo', no, cumplo, soy, una, maquina, ':C'], []).
template([cumplo, anos, el, _], ['Exelente', 'yo', no, cumplo, soy, una, maquina, ':C'], []).
template([el, _, es, mi, cumpleanos], ['Exelente', 'yo', no, cumplo, soy, una, maquina, ':C'], []).

template([mi, mejor, amigo, es, s(_), '!'], ['Exelente', gustaria, conocer, a, 0, '!'], [4]).
template([mi, amigo, favorito, es, s(_), '!'], ['Exelente', gustaria, conocer, a, 0, '!'], [4]).
template([s(_), es, mi, mejor, amigo, '!'], ['Exelente', gustaria, conocer, a, 0, '!'], [0]).

template([mi, amigo, s(_), es, una, gran, persona, '!'], ['Por', que, 0, te, cae, tan, bien, '?'], [2]).
template([mi, amigo, s(_), buena, persona, '!'], ['Por', que, 0, te, cae, tan, bien, '?'], [2]).
template([s(_), es, una, gran, persona, '!'], ['Por', que, 0, te, cae, tan, bien, '?'], [0]).


template([mi, amigo, s(_), tiene, gustos, similares, a, los, mios, '.'], ['Que', es, lo, que, mas, les, gusta, a, 0, y, a, ti, '?'], [2]).
template([s(_), tiene, gustos, similares, a, los, mios, '.'], ['Que', es, lo, que, mas, les, gusta, a, 0, y, a, ti, '?'], [0]).
template([s(_), y, yo, tenemos, gustos, similares, '.'], ['Que', es, lo, que, mas, les, gusta, a, 0, y, a, ti, '?'], [0]).

template([tengo, otro, amigo, que, se, llama, s(_), '.'], ['Un', gusto, saber, que, 0, es, tu, amigo, '¿', tines, mas, amigos, '?'], [6]).
template([mi, otro, amigo, se, llama, s(_), '.'], ['Un', gusto, saber, que, 0, es, tu, amigo, '¿', tines, mas, amigos, '?'], [5]).
template([tengo, otro, es, s(_), '.'], ['Un', gusto, saber, que, 0, es, tu, amigo, '¿', tines, mas, amigos, '?'], [3]).

template([si, tengo, alrededor, de, s(_), amigos, '.'], ['WOW!', 0, son, bastante, '¿', quien, es, tu, amigo, favorito, '?'], [4]).
template([claro, tengo, alrededor, de, s(_), amigos, '.'], ['WOW!', 0, son, bastante, '¿', quien, es, tu, amigo, favorito, '?'], [4]).
template([tengo, s(_), mas, '.'], ['WOW!', 0, son, bastante, '¿', quien, es, tu, amigo, favorito, '?'], [1]).

template([_, es, mi, amigo, favorito, '.'], ['Me', gustaria, no, ser, una, maquina, y, tener, amigos, ':C'], []).
template([mi, amigo, favorito, es, _, '.'], ['Me', gustaria, no, ser, una, maquina, y, tener, amigos, ':C'], []).
template([mi, mejor, amigo, es, _, '.'], ['Me', gustaria, no, ser, una, maquina, y, tener, amigos, ':C'], []).

% Templates with two arguments
template([mis, 2, mejores, amigos, son, s(_), y, s(_), '.'], ['Exelente!', algun, dia, me, gustaria, conocer, a, 0, y, a, 1, ',', '¿', tienes, amigas, '?'], [5,7]).
template([mis, 2, mejores, amigas, son, s(_), y, s(_), '.'], ['Exelente!', algun, dia, me, gustaria, conocer, a, 0, y, a, 1, '!'], [5,7]).
template([mis, 2, primos, preferidos, son, s(_), y, s(_), '.'], ['Exelente!', algun, dia, me, gustaria, conocer, a, 0, y, a, 1, ',', '¿', tienes, prima, '?'], [5,7]).
template([mis, 2, primas, preferidas, son, s(_), y, s(_), '.'], ['Exelente!', algun, dia, me, gustaria, conocer, a, 0, y, a, 1, '!'], [5,7]).
template([tambien, tengo, tengo, un, perro, llamado, s(_), y, una, perrita, llamada, s(_), '.'], ['Quie', es, mayor, ', ', '¿', 0, o, 1, '?'], [6,11]).

% Templates with three arguments
template([me, gusta, practicar, s(_), con, s(_), y, s(_), '.'], ['Genial!', 1, y, 2, son, buenos, practicando, 0, '?'], [3,5,7]).
template([s(_), es, un, deporte, que, disfruto, practicar, con, s(_), y, s(_), '.'], ['¡Genial!', ', ', 1, y, 2, son, buenos, practicando, 0, '?'], [0,8,10]).
template([el, s(_), ', ', s(_), y, el, s(_), son, mis, deportes, favoritos, '.'], ['Eenial!', '¿', el, 0, ', ', 1, y, 2, son, deportes, bastante, populares, '!'], [1,3,6]).
template([s(_), es, un, deporte, muy, popular, entre, s(_), y, s(_), en, mi, ciudad, '.'], ['¡Interesante!', '¿Has, equipos, mixtos, entr', 1, y, 2, de, 0, en, tu, ciudad, '?'], [0,7,9]).
template([s(_), es, un, deporte, muy, conocido, entre, s(_), y, s(_), en, mi, ciudad, '.'], ['¡Interesante!', '¿Has, equipos, mixtos, entr', 1, y, 2, de, 0, en, tu, ciudad, '?'], [0,7,9]).

% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

		 % pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).

% ---- New templates using flags ----
% -----------------------------------
template([conoces, a, s(_), _], [flagKnow], [2]).
template([es, tu, amigo, s(_), _], [flagFriend], [3]).
template([es, tu, enemigo, s(_), _], [flagEnemy], [3]).

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([i, have, s(_), with, s(_), '.'], ['You', have, to, deal, with, your, 0, and, your, 1, in, a, mature, way, '.'], [2, 4]).
template([i, s(_),  _], [i, can, recommend, you, a, book, about, that, issue], []).
template([please, s(_), _], ['No', i, can, not, help, ',', i, am, just, a, machine], []). 
		 template([tell, me, a, s(_), _], ['No', i, can, not, ',', i, am, bad, at, that], []).

% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO FAMILY TREE  --------------------------------------- %

template([quienes, son, los, nietos, de, s(_), '?', .], [flagGradSen], [5]).
template([quienes, son, los, nietos, hombres, de, s(_), '?', .], [flagGradSenBoy], [6]).
template([quienes, son, los, nietos, mujeres, de, s(_), '?', .], [flagGradSenGirl], [6]).

template([quienes, son, los, hijos, de, s(_), '?', .], [flagChild], [5]).
template([quienes, son, los, hijos, hombres, de, s(_), '?', .], [flagChildBoy], [6]).
template([quienes, son, los, hijos, mujeres, de, s(_), '?', .], [flagChildGirl], [6]).

template([quienes, son, los, tios, de, s(_), '?', .], [flagUncle], [5]).
template([quienes, son, los, tios, hombres, de, s(_), '?', .], [flagUncleBoy], [6]).
template([quienes, son, los, tios, mujeres, de, s(_), '?', .], [flagAuntGirl], [6]).

template([quienes, son, los, abuelos, de, s(_), '?', .], [flagGrandFathers], [5]).
template([quienes, son, los, abuelos, hombres, de, s(_), '?', .], [flagGrandFather], [6]).
template([quienes, son, los, abuelos, mujeres, de, s(_), '?', .], [flagGrandMother], [6]).

template([quienes, son, los, hermanos, de, s(_), '?', .], [flagBrothers], [5]).
template([quienes, son, los, hermanos, hombres, de, s(_), '?', .], [flagBrother], [6]).
template([quienes, son, los, hermanos, mujeres, de, s(_), '?', .], [flagSister], [6]).

template(_, ['Please', explain, a, little, more, '.'], []). 
% Lo que le gusta a eliza : flagLike
elizaLikes(X, R):- likes(X), R = ['Yeah', i, like, X].
elizaLikes(X, R):- \+likes(X), R = ['Nope', i, do, not, like, X].
likes(apples).
likes(ponies).
likes(zombies).
likes(manzanas).
likes(computadoras).
like(carros).

% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['Yes', i, X, and, i, love, it].
elizaDoes(X, R):- \+does(X), R = ['No', i, do, not, X ,'.', it, is, too, hard, for, me].
does(study).
does(cook).
does(work).

% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Yes', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', i, am, not, X].
is0(dumb).
is0(weird).
is0(nice).
is0(fine).
is0(happy).
is0(redundant).

%elize know: flagKnow
elizaKnow(X, R):- know(X), R = ['Si', yo, conosco, a, X].
elizaKnow(X, R):- \+know(X), R = ['No', yo, conosco, a, X].
know(jose).
know(alejandro).
know(luis).
know(enrrique).

%elize know: flagFriend
elizaFriend(X, R):- friend(X), R = ['Si', X, es, mi, amigo].
elizaFriend(X, R):- \+friend(X), R = ['No', X, no, es, mi, amigo].
friend(jose).
friend(luis).

%elize know: flagEnemy
elizaEnemy(X, R):- enemy(X), R = ['Si', X, es, mi, enemigo].
elizaEnemy(X, R):- \+enemy(X), R = ['No', X, no, es, mi, enemigo].
enemy(alejandro).
enemy(enrrique).

% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
% --------------------------------------- Family Tree rules --------------------------------------- %
abuelo(X,Y):- padrede(X,Z), padrede(Z,Y); padrede(X,Z), madrede(Z,Y).
abuela(X,Y):- madrede(X,Z), padrede(Z,Y); madrede(X,Z), madrede(Z,Y).
abuelos(X,Y):- abuela(X,Y); abuelo(X,Y).

niete(Y,X):- padrede(X,Z), padrede(Z,Y); padrede(X,Z), madrede(Z,Y); madrede(X,Z), madrede(Z,Y); madrede(X,Z), padrede(Z,Y).
nieteHombre(Y,X):- padrede(X,Z), padrede(Z,Y), hijo(Y); padrede(X,Z), madrede(Z,Y), hijo(Y); madrede(X,Z), madrede(Z,Y), hijo(Y); madrede(X,Z), padrede(Z,Y), hijo(Y).
nieteMujer(Y,X):- padrede(X,Z), padrede(Z,Y), hija(Y); padrede(X,Z), madrede(Z,Y), hija(Y); madrede(X,Z), madrede(Z,Y), hija(Y); madrede(X,Z), padrede(Z,Y), hija(Y).

hermane(A,B):- padrede(X,A), padrede(X,B), A \= B; madrede(X,A), madrede(X,B), A \= B.
hermaneHombre(A,B):- padrede(X,A), padrede(X,B), hijo(B), A \= B; madrede(X,A), madrede(X,B), hijo(B), A \= B.
hermaneMujer(A,B):- padrede(X,A), padrede(X,B), hija(B), A \= B; madrede(X,A), madrede(X,B), hija(B), A \= B.

tie(B,C):- hermane(A,B), padrede(A,C), \+ padrede(B, C); hermane(A,B), madrede(A,C), \+ madrede(B, C).
tieHombre(B,C):- hermane(A,B), padrede(A,C), \+ padrede(B, C), hijo(B); hermane(A,B), madrede(A,C), \+ madrede(B, C), hijo(B).
tieMujer(B,C):- hermane(A,B), padrede(A,C), \+ padrede(B, C), hija(B); hermane(A,B), madrede(A,C), \+ madrede(B, C), hija(B).

hijo(X,Y):- padrede(X,Y); madrede(X,Y).
hijoHombre(X,Y):- padrede(X,Y), hijo(Y); madrede(X,Y), hijo(Y).
hijoMujer(X,Y):- padrede(X,Y), hija(Y); madrede(X,Y), hija(Y).

esposaDe(X, Y):- padrede(X, A), madrede(Y, A), !.
esposoDe(X, Y):- madrede(X, A), padrede(Y, A), !.

% ------------------- GrandSon ------------------- %
% ------------------------------------------------ %
grandSen(X, R) :- 
    findall(Y, niete(Y, X), GrandSen),
    atomic_list_concat(GrandSen, ', ', GrandSenStr),
    format(atom(R), 'Los nietos y nietas de ~w es/son: ~w.', [X, GrandSenStr]).
grandSenBoy(X, R) :- 
    findall(Y, nieteHombre(Y, X), GrandSenBoy),
    atomic_list_concat(GrandSenBoy, ', ', GrandSenBoyStr),
    format(atom(R), 'Los nietos hombres de ~w es/son: ~w.', [X, GrandSenBoyStr]).
grandSenGirl(X, R) :- 
    findall(Y, nieteMujer(Y, X), GrandSenGirl),
    atomic_list_concat(GrandSenGirl, ', ', GrandSenGirlStr),
    format(atom(R), 'Los nietos mujeres de ~w es/son: ~w.', [X, GrandSenGirlStr]).

% ------------------- Child ------------------- %
% ------------------------------------------------ %
child(X, R) :- 
    findall(Y, hijo(X, Y), Child),
    atomic_list_concat(Child, ', ', ChildStr),
    format(atom(R), 'Los hijos e hijas de ~w es/son: ~w.', [X, ChildStr]).
childBoy(X, R) :- 
    findall(Y, hijoHombre(X, Y), ChildBoy),
    atomic_list_concat( ChildBoy, ', ',  ChildBoyStr),
    format(atom(R), 'Los hijos hombres de ~w es/son: ~w.', [X,  ChildBoyStr]).
childGirl(X, R) :- 
    findall(Y, hijoMujer(X, Y), ChildGirl),
    atomic_list_concat(ChildGirl, ', ', ChildGirlStr),
    format(atom(R), 'Todos las hijas de ~w es/son: ~w.', [X, ChildGirlStr]).

% ------------------- Uncles and Aunt ------------------- %
% ------------------------------------------------ %
uncle(X, R) :- 
    findall(Y, tie(Y, X), Uncle),
    atomic_list_concat(Uncle, ', ', UncleStr),
	process_string(UncleStr, Resp),
	eliminar_primer_elemento_y_coma(Resp, NewResp),
    format(atom(R), 'Todos los tios y tias de ~w es/son: ~w.', [X, NewResp]).

uncleMan(X, R) :- 
    findall(Y, tieHombre(Y, X), UncleMan),
    atomic_list_concat(UncleMan, ', ', UncleManStr),
	process_string(UncleManStr, Resp),
	eliminar_primer_elemento_y_coma(Resp, NewResp),
    format(atom(R), 'Todos los tios de ~w es/son: ~w.', [X, NewResp]).

auntGirl(X, R) :- 
    findall(Y, tieMujer(Y, X), AuntGirl),
    atomic_list_concat(AuntGirl, ', ', AuntGirlStr),
	process_string(AuntGirlStr, Resp),
	eliminar_primer_elemento_y_coma(Resp, NewResp),
    format(atom(R), 'Todas las tias de ~w es/son: ~w.', [X, NewResp]).

% ------------------- Where is GrandFather and GrandMother ------------------- %
% ---------------------------------------------------------------------------- %
grandFathers(X, R) :- 
    findall(Y, abuelos(Y, X), GrandFathers),
    atomic_list_concat(GrandFathers, ', ', GrandFathersStr),
    format(atom(R), 'Los abuelos y abuelas de ~w es/son: ~w.', [X, GrandFathersStr]).
grandFather(X, R) :- 
    findall(Y, abuelo(Y, X), GrandFather),
    atomic_list_concat(GrandFather, ', ', GrandFatherStr),
    format(atom(R), 'Los abuelos de ~w es/son: ~w.', [X, GrandFatherStr]).
grandMother(X, R) :- 
    findall(Y, abuela(Y, X), GrandMother),
    atomic_list_concat(GrandMother, ', ', GrandMotherStr),
    format(atom(R), 'Las abuelas de ~w es/son: ~w.', [X, GrandMotherStr]).

% ------------------- Brother ------------------- %
% ------------------------------------------------ %
brothers(X, R) :- 
    % findall(Y, hermane(X, Y), Brothers),
    setof(Y, hermane(X, Y), Brothers),
    atomic_list_concat(Brothers, ', ', BrothersStr),
    format(atom(R), 'Los hermanos y hermanas de ~w es/son: ~w.', [X, BrothersStr]).
brother(X, R) :- 
    setof(Y, hermaneHombre(X, Y), Brother),
    atomic_list_concat( Brother, ', ',  BrotherStr),
    format(atom(R), 'Los hermanos de ~w es/son: ~w.', [X,  BrotherStr]).
sister(X, R) :- 
    setof(Y, hermaneMujer(X, Y), Sister),
    atomic_list_concat(Sister, ', ', SisterStr),
    format(atom(R), 'Todas las hermanas de ~w es/son: ~w.', [X, SisterStr]).

% -------------- Other functios -------------- %
% -------------------------------------------- %
% Dividir una cadena en una lista de elementos
split_string(String, Separator, Substrings) :-
    split_string(String, Separator, "", Substrings).

% Eliminar duplicados de una lista
remove_duplicates([], []).

remove_duplicates([H|T], [H|Result]) :-
    \+ member(H, T),  % H no es un miembro de T
    remove_duplicates(T, Result).

remove_duplicates([H|T], Result) :-
    member(H, T),  % H es un miembro de T
    remove_duplicates(T, Result).

% Unir una lista de elementos en una cadena separada por comas
join_list_with_comma([], "").

join_list_with_comma([H], H).

join_list_with_comma([H|T], Result) :-
    join_list_with_comma(T, Rest),
    string_concat(H, ", ", Temp),
    string_concat(Temp, Rest, Result).

% Predicado principal para procesar la cadena de texto
process_string(InputString, OutputString) :-
    split_string(InputString, ",", Substrings),     
    remove_duplicates(Substrings, UniqueList),      
    join_list_with_comma(UniqueList, OutputString).

% ----------------------------------------------------------- %
% Predicado para concatenar dos listas
concatenar_y_convertir_cadena(Cadena1, Cadena2, Resultado) :-
    atom_concat(Cadena1, Cadena2, Resultado).

% ----------------------------------------------------------- %
eliminar_primer_elemento_y_coma(CadenaEntrada, CadenaSalida) :-
    split_string(CadenaEntrada, "  ", " ", [_, PrimerElemento|Resto]),
    atomic_list_concat([PrimerElemento|Resto], " ", CadenaSalida).


match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

% Eliza likes:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagLike,
	elizaLikes(Atom, R).

% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

% Eliza know:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagKnow,
	elizaKnow(Atom, R).

% Eliza friend:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagFriend,
	elizaFriend(Atom, R).

% Eliza enemy:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagEnemy,
	elizaEnemy(Atom, R).




% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %
% --------------------------------------- Replace Family Tree  --------------------------------------- %

% grandSenReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagGradSen,
    grandSen(Atom, R).
% grandSenBoyReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagGradSenBoy,
    grandSenBoy(Atom, R).
% grandSenGirlReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagGradSenGirl,
    grandSenGirl(Atom, R).

% childReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagChild,
    child(Atom, R).
% childBoyReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagChildBoy,
    childBoy(Atom, R).
% childGirlReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagChildGirl,
    childGirl(Atom, R).

% tieReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagUncle,
    uncle(Atom, R).
% tieBoyReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagUncleBoy,
    uncleMan(Atom, R).
% tieGirlReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagAuntGirl,
    auntGirl(Atom, R).

% grandFathersReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagGrandFathers,
    grandFathers(Atom, R).
% childBoyReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagGrandFather,
    grandFather(Atom, R).
% childGirlReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagGrandMother,
    grandMother(Atom, R).

% brothersReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagBrothers,
    brothers(Atom, R).
% brotherReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagBrother,
    brother(Atom, R).
% sisterReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSister,
    sister(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.


% --- START KNOWLEDGE BASE TO FAMILY TREE--- %
% --- START KNOWLEDGE BASE TO FAMILY TREE--- %
% --- START KNOWLEDGE BASE TO FAMILY TREE--- %

hijo(jose_abuelo).
hijo(salud).
hijo(jose).
hijo(israel).
hijo(ivan).
hijo(jose_padre).
hijo(carlos).    
hijo(refugio).
hijo(jonathan).                
hijo(isidro).
hijo(roberto).
hijo(javier).
hijo(cesar).
hijo(edwin). 
hijo(willian).
hijo(ignacio).
hijo(cristian).        
hijo(alejandro).
hijo(jason). 
hijo(willian_l).
hija(martha_abuela).
hija(paula).
hija(veronica).
hija(alejandra).
hija(aira).
hija(anaury). 
hija(leticia). 
hija(alexa).     
hija(paola).         
hija(rosa).
hija(viviana).
hija(martha).
hija(tere).
hija(karla).     
hija(laura).
padre(salud).   
padre(jose_padre).
padre(jose_abuelo).
padre(ignacio).
padre(alejandro).
padre(refugio).
padre(roberto).
padre(javier).
madre(leticia).
madre(martha_abuela).
madre(paula).
madre(rosa).
madre(laura).
madre(martha).
madre(veronica).
padrede(ignacio, tere).
padrede(ignacio, cristian).
padrede(alejandro, jason).
padrede(salud, leticia).
padrede(salud, carlos).
padrede(salud, refugio).
padrede(salud, isidro).
padrede(salud, roberto).
padrede(salud, javier).
padrede(salud, laura).
padrede(salud, rosa).
padrede(jose_abuelo, jose_padre).
padrede(jose_abuelo, ignacio).
padrede(jose_abuelo, alejandro).
padrede(jose_abuelo, martha).
padrede(jose_abuelo, veronica).
padrede(jose_padre, jose).
padrede(jose_padre, israel).
padrede(jose_padre, ivan).
padrede(refugio, jonathan). 
padrede(roberto, alexa). 
padrede(javier, paola).
padrede(javier, lizeth).
madrede(paula, leticia).
madrede(paula, carlos).
madrede(paula, refugio).
madrede(paula, isidro).
madrede(paula, roberto).
madrede(paula, javier).
madrede(paula, rosa).
madrede(paula, laura).
madrede(martha_abuela, jose_padre).
madrede(martha_abuela, ignacio).
madrede(martha_abuela, alejandro).
madrede(martha_abuela, martha).
madrede(martha_abuela, veronica).
madrede(leticia, jose).
madrede(leticia, israel).
madrede(leticia, ivan).
madrede(rosa, viviana).
madrede(laura, edwin).
madrede(laura, willian).
madrede(laura, karla).
madrede(rosa, cesar).
madrede(rosa, edwin).
madrede(rosa, willian).
madrede(rosa, karla).
madrede(martha, willian_l).
madrede(veronica, alejandra).
madrede(veronica, aira).
madrede(veronica, anaury).

% --- END KNOWLEDGE BASE TO FAMILY TREE--- %
% --- END KNOWLEDGE BASE TO FAMILY TREE--- %
% --- END KNOWLEDGE BASE TO FAMILY TREE--- %

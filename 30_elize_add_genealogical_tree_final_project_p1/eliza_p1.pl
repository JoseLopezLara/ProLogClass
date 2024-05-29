
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

% ********************** 20 template of 1 argument to family tree ********************** %
% ************************************************************************************** %
template([quienes, son, los, nietos, de, s(_), '?', .], [flagGradSen], [5]).
template([quienes, son, los, nietos, hombres, de, s(_), '?', .], [flagGradSenBoy], [6]).
template([quienes, son, los, nietos, mujeres, de, s(_), '?', .], [flagGradSenGirl], [6]).

template([quienes, son, los, hijos, de, s(_), '?', .], [flagChild], [5]).
template([quienes, son, los, hijos, hombres, de, s(_), '?', .], [flagChildBoy], [6]).
template([quienes, son, [los, las], [hijos, hijas], mujeres, de, s(_), '?', .], [flagChildGirl], [6]).

template([quienes, son, los, tios, de, s(_), '?', .], [flagUncle], [5]).
template([quienes, son, los, tios, hombres, de, s(_), '?', .], [flagUncleBoy], [6]).
template([quienes, son, los, tios, mujeres, de, s(_), '?', .], [flagAuntGirl], [6]).

template([quienes, son, los, abuelos, de, s(_), '?', .], [flagGrandFathers], [5]).
template([quienes, son, los, abuelos, hombres, de, s(_), '?', .], [flagGrandFather], [6]).
template([quienes, son, los, abuelos, mujeres, de, s(_), '?', .], [flagGrandMother], [6]).

template([quienes, son, los, hermanos, de, s(_), '?', .], [flagBrothers], [5]).
template([quienes, son, los, hermanos, hombres, de, s(_), '?', .], [flagBrother], [6]).
template([quienes, son, los, hermanos, mujeres, de, s(_), '?', .], [flagSister], [6]).

template([quien, es, el, esposo, de, s(_), '?', .], [flagHusband], [5]).
template([quien, es, la, esposa, de, s(_), '?', .], [flagWife], [5]).

template([s(_), esta, casado, '?', .], [flagHasWife], [0]).
template([s(_), esta, casada, '?', .], [flagHasHusband], [0]).

template([s(_), tiene, hermanos, '?', .], [flagHasBrothers], [0]).

% ********************** 5 template of 2 argument to family tree ********************** %
% ************************************************************************************** %
template([s(_), es, padre, de, s(_), '?', .], [flagFatherOf], [0,4]).
template([s(_), es, madre, de, s(_), '?', .], [flagMotherOf], [0,4]).
template([s(_), es, esposo, de, s(_), '?', .], [flagHusbandOf], [0,4]).
template([s(_), es, esposa, de, s(_), '?', .], [flagWifeOf], [0,4]).
template([s(_), es, hermano, de, s(_), '?', .], [flagBrotherOf], [0,4]).

% ********************** 5 template of 3 argument to family tree ********************** %
% ************************************************************************************** %
template([s(_), ',', s(_), y, s(_), son, hermanos, '?', .], [flagAreBrother], [0,2,4]).
template([s(_), 'y', s(_), tienen, un, hijo, llamado, s(_), '?', .], [flaghaveChild], [0,2,7]).
template([s(_), 'y', s(_), tienen, un, nieto, llamado, s(_), '?', .], [flagHaveGrandSon], [0,2,7]).
template([s(_), 'y', s(_), quieren, mucho, a, su, nieto, s(_), '?', .], [flagWeLoveGrandSon], [0,2,8]).
template([s(_), 'y', s(_), quieren, mucho, a, su, hijo, s(_), '?', .], [flagWeLoveChild], [0,2,8]).

% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %
% --------------------------------------- TEMPLATE TO DISEASES TREE  --------------------------------------- %

% tienes información de la enfermedad s(-) ? .
% cuales son los síntomas del s(-) ? .  
% que medicinas son utilizadas para la s(_) ? .
% que especialistas atienden s(_) ? .
% que alimentos detonan s(_) ? .
% que región encapsula la s(_) ? .
% cuantos síntomas diferentes tiene el s(_) ? .
% cuantas medicinas diferentes pueden tratar el (_) ? .
% cuantos especialistas diferentes pueden atender el (_) ? .
% cuantos alimentos diferentes pueden detonar el (_) ? .
% el sintoma s(_) a que enfermedades puede pertenecer () ? .
% el medicamento s(_) que enfermedades puede tratar ? .
% el especialista s(_) que enfermedades puede tratar ? .
% el abuso de s(_) que enfermedades puede detonar ? .
% a que enfermedad o enfermedades pertenece el sintoma de s(_) ? .
% la medicamento s(_) que enfermedad trata ? .
% el especialista s(_) que enfermedad trata ? .
% el alimento s(_) que enfermedad detona ? .
% que tipo de medicamente es el s(_) ? .
% como se suministra el medicamento s() ? .

template([tienes, informacion, de, la, enfermedad, s(-), '?' .], [flag], [5]).
% cuales son los síntomas del s(-) ? .
template([cuales, son, los, sintomas, del, s(-), '?' .], [flag], [5]).
% que medicinas son utilizadas para la s(_) ? .
template([que, medicinas, son, utilizadas, para, la, s(_), '?' .], [flag], [6]).
% que especialistas atienden s(_) ? .
template([que, especialistas, atienden, s(_), '?' .], [flag], [3]).
% que alimentos detonan s(_) ? .
template([que, alimentos, detonan, s(_), '?' .], [flag], [3]).
% que región encapsula la s(_) ? .
template([que, region, encapsula, la, s(_), '?' .], [flag], [5]).
% cuantos síntomas diferentes tiene el s(_) ? .
template([cuantos, sintomas, diferentes, tiene, el, s(_), '?' .], [flag], [5]).
% cuantas medicinas diferentes pueden tratar el (_) ? .
template([cuantas, medicinas, diferentes, pueden, tratar, el, s(_), '?' .], [flag], [6]).
% cuantos especialistas diferentes pueden atender el (_) ? .
template([cuantos, especialistas, diferentes, pueden, atender, el, s(_), '?' .], [flag], [6]).
% cuantos alimentos diferentes pueden detonar el (_) ? .
template([cuantos, alimentos, diferentes, pueden, detonar, el, s(_), '?' .], [flag], [6]).
% el sintoma s(_) a que enfermedades puede pertenecer () ? .
template([el, sintoma, s(_), a, que, enfermedades, puede, pertenecer, '?' .], [flag], [2]).
% el medicamento s(_) que enfermedades puede tratar ? .
template([el, medicamento, s(_), que, enfermedades, puede, tratar, '?' .], [flag], [2]).
% el especialista s(_) que enfermedades puede tratar ? .
template([el, especialista, s(_), que, enfermedades, puede, tratar, '?' .], [flag], [2]).
% el abuso de s(_) que enfermedades puede detonar ? .
template([el, abuso, de, s(_), que, enfermedades, puede, detonar, '?' .], [flag], [3]).
% a que enfermedad o enfermedades pertenece el sintoma de s(_) ? .
template([a, que, enfermedad, o, enfermedades, pertenece, el, sintoma, de, s(_), '?' .], [flag], [9]).
% la medicamento s(_) que enfermedad trata ? .
template([la, medicamento, s(_), que, enfermedad, trata, '?' .], [flag], [2]).
% el especialista s(_) que enfermedad trata ? .
template([el, especialista, s(_), que, enfermedad, trata, '?' .], [flag], [2]).
% el alimento s(_) que enfermedad detona ? .
template([el, alimento, s(_), que, enfermedad, detona, '?' .], [flag], [2]).
% que tipo de medicamente es el s(_) ? .
template([que, tipo, de, medicamento, es, el, s(_), '?' .], [flag], [6]).
% como se suministra el medicamento s() ? .
template([como, se, suministra, el, medicamento, s(_), '?' .], [flag], [5]).



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

tieneEsposa(X, R):- padrede(X, A), madrede(_, A), R = ['Si', X, 'esta casado'], !.
tieneEsposa(X, R):- \+ padrede(X, _), R = ['No', X, 'no esta casado']; padrede(X, A), \+ madrede(_, A), R = ['No', X, 'esta casado'], !.
tieneEsposo(X, R):- madrede(X, A), padrede(_, A), R = ['Si', X, ' esta casada'], !.
tieneEsposo(X, R):- \+ madrede(X, _), R = ['No', X, 'no esta casada']; madrede(X, A), \+ padrede(_, A), R = ['No', X, 'no esta casada'], !.

tieneHermane(A,R):- padrede(X,A), padrede(X,B), A \= B, R = ['Si', A,'tiene hermanos'], !; madrede(X,A), madrede(X,B), A \= B, R = ['Si', A, 'tiene hermanos'], !.
tieneHermane(A,R):- \+ (padrede(X,A), padrede(X,B), A \= B), R = ['No', A,' no tiene hermanos']; \+ (madrede(X,A), madrede(X,B), A \= B), R = ['No', A, 'no tiene hermanos'].

esPadreDe(X,Y,R):- padrede(X, Y), R = ['Si', X, 'es padre de', Y].
esPadreDe(X,Y,R):- \+ padrede(X,Y), R = ['No', X, 'no es padre de', Y].

esMadreDe(X,Y,R):- madrede(X, Y), R = ['Si', X, 'es madre de', Y].
esMadreDe(X,Y,R):- \+ madrede(X,Y), R = ['No', X, 'no es madre de', Y].

esEsposoDe(X, Y, R):- padrede(X, A), madrede(Y, A), R = ['Si', X, 'es esposo de', Y], !.
esEsposoDe(X, Y, R):- \+ (padrede(X, A), madrede(Y, A)), R = ['No', X, 'no es esposo de', Y].
esEsposaDe(X, Y, R):- madrede(X, A), padrede(Y, A), R = ['Si', X, 'es esposa de', Y], !.
esEsposaDe(X, Y, R):- \+ (madrede(X, A), padrede(Y, A)), R = ['No', X, 'no es esposa de', Y].

hermaneDe(A, B, R):- padrede(X,A), padrede(X,B), A \= B, R = ['Si', A,'es hermano de', B], !; madrede(X,A), madrede(X,B), A \= B, R = ['Si', A, 'es hermano de', B], !.
hermaneDe(A, B, R):- \+ (padrede(X,A), padrede(X,B), A \= B), R = ['No', A,' no es hermano de', B]; \+ (madrede(X,A), madrede(X,B), A \= B), R = ['No', A, 'no es hermano de', B].

sonHermane(A, B, C, R):- padrede(X,A), padrede(X,B), padrede(X,C), A \= B, B \= C, R = ['Si', A, ' ', B, ' y', C, ' son hermanos'], !; madrede(X,A), madrede(X,B), madrede(X,C), A \= B, B \= C, R = ['Si', A, ' ', B, ' y', C, ' son hermanos'], !.
sonHermane(A, B, C, R):- \+ (padrede(X,A), padrede(X,B), padrede(X,C), A \= B , B \= C), R = ['No', A, ' ', B, ' y', C, ' no son hermanos']; \+ (madrede(X,A), madrede(X,B), madrede(X,C), A \= B , B \= C), R = ['No', A, ' ', B, ' y', C, ' no son hermanos'].

tienenHijoLlamado(A, B, C, R):- padrede(A, C), madrede(B, C), R = ['Si', A, 'y', B, 'son padres de ', C];  madrede(A, C), padrede(B, C), R = ['Si', A, 'y', B, 'son padres de ', C].
tienenHijoLlamado(A, B, C, R):- \+ (padrede(A, C), madrede(B, C)), R = ['No', A, 'y', B, 'no son padres de ', C];  \+ (madrede(A, C), padrede(B, C)), R = ['No', A, 'y', B, 'no son padres de ', C].

tienenNieteLlamado(A, B, C, R):- niete(C, A), niete(C, B), R = ['Si', A, 'y', B, 'tienen un nieto llamado ', C].
tienenNieteLlamado(A, B, C, R):- \+ (niete(C, A), niete(C, B)), R = ['No', A, 'y', B, 'no tienen un nieto llamado ', C].

quierenAlNieteLlamado(A, B, C, R):- niete(C, A), niete(C, B), R = [A, 'y', B, ' quieren mucho a su nieto ', C].
quierenAlNieteLlamado(A, B, C, R):- \+ (niete(C, A), niete(C, B)), R = ['No', A, 'y', B, 'no tienen un nieto llamado ', C].

quierenAlHijoLlamado(A, B, C, R):- padrede(A, C), madrede(B, C), R = [A, 'y', B, 'quieren mucho a si hijo(a) ', C];  madrede(A, C), padrede(B, C), R = ['Si', A, 'y', B, 'quieren mucho a si hijo(a) ', C].
quierenAlHijoLlamado(A, B, C, R):- \+ (padrede(A, C), madrede(B, C)), R = ['No', A, 'y', B, 'no son padres de ', C];  \+ (madrede(A, C), padrede(B, C)), R = ['No', A, 'y', B, 'no son padres de ', C].



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

% ------------------- Husband and Wife ------------------- %
% ------------------------------------------------ %
husband(X, R) :- 
    findall(Y, esposoDe(X, Y), Husband),
    atomic_list_concat(Husband, ', ', HusbandStr),
    format(atom(R), 'El esposo de ~w es: ~w.', [X, HusbandStr]).

wife(X, R) :- 
    findall(Y, esposaDe(X, Y), Wife),
    atomic_list_concat(Wife, ', ', WifeStr),
    format(atom(R), 'La esposa de ~w es: ~w.', [X, WifeStr]).

% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %
% --------------------------------------- DISEASES RULES --------------------------------------- %

% Find diseases rule [1st Prameter: Symptoms List, 2nd Prameter: Disease, 3rd Prameter:Ocurrences] %
buscar([], E , 0).
buscar(X , E , 1) :- sintomade(X, E). 
buscar([X|Xs] , E , P) :- enfermedad(E) , buscar(X , E , S1) , buscar(Xs , E ,S2) , P is S1 + S2. 

% rule that return count of symptoms of desease selected 
cantSint(E , C) :- findall(X , sintomade(X, E) , L) , length(L , R), C is R.

% diagnostico rule return the probability that the person has the disease 
% [1st Prameter: Symptoms List, 2nd Prameter: Disease, 3rd Prameter: Return probability]
diagnostico([X|Xs] , E , K) :- buscar([X|Xs] , E , P) , cantSint(E , T) , K is P * 100 / T. 

%rule that prescription medicine according symptom
% TODO: Cheche if need delete this rule  
recetade(M, S):- sintomade(S, Z), medicinade(M, Z).

% rule tha return the medicine and specialist according any disease 
% [1st Prameter: specialist tha return, 2nd Prameter: Medicine that return, 3rd Prameter: Disease]
atiendeespecialista(E, S):- sintomade(S,Z), especialistade(E, Z).
mereceta(Es, M, E):- medicinade(M, E), sintomade(S, E), atiendeespecialista(Es,S).  


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

% husbandReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHusband,
    husband(Atom, R).
% wifeReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagWife,
    wife(Atom, R).

% HasHusbandReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHasHusband,
    tieneEsposo(Atom, R).
% hasWifeReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHasWife,
    tieneEsposa(Atom, R).

% hasBrothersReplace 
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHasBrothers,
    tieneHermane(Atom, R).

% fatherOfReplace 
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(0, Resp, X),
    X == flagFatherOf,
    esPadreDe(Atom0, Atom1, R).
% motherOfReplace 
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(0, Resp, X),
    X == flagMotherOf,
    esMadreDe(Atom0, Atom1, R).

% HusbandOfReplace 
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(0, Resp, X),
    X == flagHusbandOf,
    esEsposoDe(Atom0, Atom1, R).
% WifeOfReplace 
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(0, Resp, X),
    X == flagWifeOf,
    esEsposaDe(Atom0, Atom1, R).

% HermaneOfReplace 
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(0, Resp, X),
    X == flagBrotherOf,
    hermaneDe(Atom0, Atom1, R).

% AreBrothersReplace 
replace0([I, J, K], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(K, Input, Atom2),
    nth0(0, Resp, X),
    X == flagAreBrother,
    sonHermane(Atom0, Atom1, Atom2, R).

% haveChildNamedOfReplace 
replace0([I, J, K], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(K, Input, Atom2),
    nth0(0, Resp, X),
    X == flaghaveChild,
    tienenHijoLlamado(Atom0, Atom1, Atom2, R).   
       
% haveGrandSonOfReplace 
replace0([I, J, K], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(K, Input, Atom2),
    nth0(0, Resp, X),
    X == flagHaveGrandSon,
    tienenNieteLlamado(Atom0, Atom1, Atom2, R).    

% weLoveGrandSonOfReplace 
replace0([I, J, K], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(K, Input, Atom2),
    nth0(0, Resp, X),
    X == flagWeLoveGrandSon,
    quierenAlNieteLlamado(Atom0, Atom1, Atom2, R).

% weLoveGrandSonOfReplace 
replace0([I, J, K], Input, _, Resp, R) :- 
    nth0(I, Input, Atom0),
    nth0(J, Input, Atom1),
    nth0(K, Input, Atom2),
    nth0(0, Resp, X),
    X == flagWeLoveChild,
    quierenAlHijoLlamado(Atom0, Atom1, Atom2, R).    

% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %
% --------------------------------------- Diseases Replace --------------------------------------- %

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
madrede(laura, edwin).
madrede(laura, willian).
madrede(laura, karla).
madrede(rosa, cesar).
madrede(rosa, viviana).
madrede(martha, willian_l).
madrede(veronica, alejandra).
madrede(veronica, aira).
madrede(veronica, anaury).

% --- END KNOWLEDGE BASE TO FAMILY TREE--- %
% --- END KNOWLEDGE BASE TO FAMILY TREE--- %
% --- END KNOWLEDGE BASE TO FAMILY TREE--- %

% --- START KNOWLEDGE BASE TO DISEASES--- %
% --- START KNOWLEDGE BASE TO DISEASES--- %
% --- START KNOWLEDGE BASE TO DISEASES--- %

% --------- Diseases statement --------- %
enfermedad(gota).
enfermedad(sarampion).
enfermedad(cancer_de_mama).

% --------- Diseases symptoms --------- %
sintomade(dolor_articular_intenso, gota).
sintomade(molestia_articular_persistente, gota).
sintomade(inflamacion, gota).
sintomade(enrojecimiento, gota).
sintomade(amplitud_de_movimiento_limitada, gota).
sintomade(sensacion_de_calor_en_el_lugar_del_dolor, gota).
sintomade(fiebre, gota).
sintomade(nodulos_en_la_piel, gota).

sintomade(fiebre, sarampion).
sintomade(tos_seca, sarampion).
sintomade(congestion_nasal, sarampion).
sintomade(dolor_de_garganta, sarampion).
sintomade(ojos_inflamados, sarampion).
sintomade(pequenas_manchas_blancas_dentro_de_la_boca, sarampion).
sintomade(sarpullido, sarampion).
sintomade(cuerpo_cortado, sarampion).

sintomade(bulto_en_area_de_la_mama, cancer_de_mama).
sintomade(hinchazon_en_area_de_la_mama, cancer_de_mama).
sintomade(piel_con_hoyuelos, cancer_de_mama).
sintomade(pezonretraido, cancer_de_mama).
sintomade(enrojecimiento, cancer_de_mama).
sintomade(formacion_de_costras, cancer_de_mama).
sintomade(secrecion_del_pezon, cancer_de_mama).
sintomade(dolor_en_cualquier_parte_de_la_mama, cancer_de_mama).
sintomade(ganglios_linfaticos_inflamados, cancer_de_mama).

% --------- Medicine Symptoms --------- %
medicinade(ibuprofeno, gota).
medicinade(naproxeno, gota).
medicinade(colquicina, gota).
medicinade(prednisona, gota).
medicinade(probenecid, gota).
medicinade(alopurinol, gota).
medicinade(febuxostat, gota).
medicinade(pegloticase, gota).

medicinade(paracetamol, sarampion).
medicinade(ibuprofeno, sarampion).
medicinade(vitamina, sarampion).

medicinade(doxorrubicina, cancer_de_mama).
medicinade(ciclofosfamida, cancer_de_mama).
medicinade(taxol, cancer_de_mama).
medicinade(tamoxifeno, cancer_de_mama).
medicinade(anastrozol, cancer_de_mama).
medicinade(trastuzumab, cancer_de_mama).
medicinade(pertuzumab, cancer_de_mama).
medicinade(palbociclib, cancer_de_mama).
medicinade(pembrolizumab, cancer_de_mama).

% --------- Medicine --------- %
medicina(ibuprofeno).
medicina(naproxeno).
medicina(colquicina).
medicina(prednisona).
medicina(probenecid).
medicina(alopurinol).
medicina(febuxostat).
medicina(pegloticase).

medicina(paracetamol).
medicina(ibuprofeno).
medicina(vitamina).

medicina(doxorrubicina).
medicina(ciclofosfamida).
medicina(taxol).
medicina(tamoxifeno).
medicina(anastrozol).
medicina(trastuzumab).
medicina(pertuzumab).
medicina(palbociclib).
medicina(pembrolizumab).

% --------- Medicine type --------- %
tipodemedicina(antiinflamatorio_no_esteroide, ibuprofeno).
tipodemedicina(sodico_antinflamatorio_no_esteroide, naproxeno).
tipodemedicina(antiinflamatorio, colquicina).
tipodemedicina(corticosteroide, prednisona).
tipodemedicina(uricosurico, probenecid).
tipodemedicina(inhibidor_de_la_produccion_de_acido_urico, alopurinol).
tipodemedicina(un_inhibidor_de_la_produccion_de_acido_urico, febuxostat).
tipodemedicina(disolvente_de_acido_urico, pegloticase).

tipodemedicina(antifebril, paracetamol).
tipodemedicina(antifebril, ibuprofeno).
tipodemedicina(vitaminico, vitamina_a).

tipodemedicina(quimioterapeutico, doxorrubicina).
tipodemedicina(quimioterapeutico, ciclofosfamida).
tipodemedicina(quimioterapeutico, taxol).
tipodemedicina(terapeutico_hormonal, tamoxifeno).
tipodemedicina(terapeutico_hormonal, anastrozol).
tipodemedicina(terapeutico_dirigido, trastuzumab).
tipodemedicina(terapeutico_dirigido, pertuzumab).
tipodemedicina(terapeutico_dirigido, palbociclib).
tipodemedicina(inmunoterapeutico, pembrolizumab).

% --------- Medicine Prenscription use --------- %
infodemedicina(la_dosis_habitual_para_adultos_es_de_400_a_800_mg_cada_6_a_8_horas, 1-1-1, ibuprofeno).
infodemedicina(se_suele_recomendar_500_mg_dos_veces_al_dia_para_adultos, 1-0-1, naproxeno).
infodemedicina(suele_suministrarse_1_mg_seguido_de_0_5_mg_cada_dos_horas_hasta_que_cede_el_dolor_la_dosis_maxima_recomendada_es_de_1_8_mg_durante_un_periodo_de_1_hora, 1-1-1-1, colquicina).
infodemedicina(la_dosis_inicial_puede_ser_de_5_a_60_mg_al_dia_en_adultos_ajustandose_segun_la_respuesta_del_paciente, 1-0-0, prednisona).
infodemedicina(la_dosis_inicial_suele_ser_de_250_mg_dos_veces_al_dia_aumentando_gradualmente_hasta_un_maximo_de_2_g_al_dia, 1-0-1, probenecid).
infodemedicina(la_dosis_inicial_habitual_es_de_100_mg_al_dia_aumentando_gradualmente_hasta_un_maximo_de_800_mg_al_dia_segun_la_respuesta_del_paciente, 1-0-0, alopurinol).
infodemedicina(la_dosis_recomendada_es_de_40_mg_una_vez_al_dia_que_puede_aumentarse_a_80_mg_una_vez_al_dia_si_los_niveles_de_acido_urico_no_se_controlan_adecuadamente, 1-0-0, febuxostat).
infodemedicina(se_administra_como_infusion_intravenosa_de_8_mg_cada_2_semanas, 1-0-0, pegloticase).

infodemedicina(para_adultos_la_dosis_recomendada_es_de_500_a_1000_mg_cada_4_a_6_horas_sin_exceder_4000_mg_en_24_horas, 1-1-1-1, paracetamol).
infodemedicina(se_recomienda_una_dosis_de_200_a_400_mg_cada_4_a_6_horas_segun_sea_necesario, 1-1-1-1, ibuprofeno).
infodemedicina(para_ninos_con_sarampion_y_riesgo_de_deficiencia_de_vitamina_a_se_recomienda_una_dosis_oral_de_200000_ui_unidades_internacionales_para_ninos_mayores_de_un_ano_y_100000_ui_para_bebes_de_6_a_12_meses_administrada_dos_dias_consecutivos_esta_dosificacion_puede_variar_segun_las_directrices_locales_y_la_evaluacion_del_medico, 1-0-0, vitamina_a).

infodemedicina(se_administra_por_via_intravenosa_la_dosis_puede_variar_pero_una_dosis_comun_es_de_60_mg_m2_administrada_cada_3_semanas, 1-0-0, doxorrubicina).
infodemedicina(se_administra_por_via_oral_o_intravenosa_la_dosis_oral_comun_es_de_100_a_200_mg_m2_diarios_durante_14_dias_seguidos_de_un_descanso_o_600_mg_m2_por_via_intravenosa_cada_2_a_4_semanas, 1-0-0, ciclofosfamida).
infodemedicina(se_administra_por_via_intravenosa_una_dosis_tipica_es_de_175_mg_m2_administrada_cada_3_semanas, 1-0-0, taxol).
infodemedicina(se_toma_por_via_oral_en_forma_de_pildoras_la_dosis_estandar_es_de_20_mg_diarios_generalmente_durante_5_anos, 1-0-0, tamoxifeno).
infodemedicina(inhibidores_de_la_aromatasa_como_anastrozol_letrozol_se_toman_por_via_oral_la_dosis_estandar_es_de_1_mg_diario_para_anastrozol_y_2_5_mg_diario_para_letrozol_generalmente_durante_5_anos, 1-0-0, anastrozol).
infodemedicina(se_administra_por_via_intravenosa_la_dosis_inicial_es_de_4_mg_m2_seguida_de_dosis_semanales_de_2_mg_m2_o_una_dosis_cada_tres_semanas_de_6_mg_m2_despues_de_la_dosis_de_carga, 1-0-0, trastuzumab).
infodemedicina(se_administra_por_via_intravenosa_la_dosis_inicial_es_de_840_mg_seguida_de_dosis_de_mantenimiento_de_420_mg_cada_3_semanas, 1-0-0, pertuzumab).
infodemedicina(se_toma_por_via_oral_la_dosis_recomendada_es_de_125_mg_una_vez_al_dia_durante_21_dias_consecutivos_seguidos_de_7_dias_sin_medicacion, 1-0-0, palbociclib).
infodemedicina(se_administra_por_via_intravenosa_la_dosis_recomendada_es_de_200_mg_cada_3_semanas, 1-0-0, pembrolizumab).

% --------- Specialist --------- %
especialistade(reumatologo, gota).
especialistade(nefrologo, gota). %% Para valorar cuestiones adyacentes al riñon

especialistade(infectologo, sarampion).
especialistade(dermatologo, sarampion).

especialistade(ginecologo, cancer_de_mama).
especialistade(oncologo, cancer_de_mama).
especialistade(mastologo, cancer_de_mama).
especialistade(radioterapeuta, cancer_de_mama).
especialistade(radiologo, cancer_de_mama).
especialistade(patologo, cancer_de_mama).
especialistade(oncologo_radiologo, cancer_de_mama).

% --------- Foot that detonate --------- %
alimentoquedetoda(higado, gota).
alimentoquedetoda(rinones, gota).
alimentoquedetoda(mollejas, gota).
alimentoquedetoda(carne_de_vaca, gota).
alimentoquedetoda(carne_de_cordero, gota).
alimentoquedetoda(carne_de_cerdo, gota).
alimentoquedetoda(anchoas, gota).
alimentoquedetoda(moluscos, gota).
alimentoquedetoda(sardinas, gota).
alimentoquedetoda(caballa, gota).
alimentoquedetoda(arenque, gota).
alimentoquedetoda(sardinas, gota).
alimentoquedetoda(cerveza, gota).
alimentoquedetoda(licores_destilados_de_alta_graduacion, gota).

% --------- Region from disease --------- %
regionde(no_tiene_una_region_de_origen, gota).
regionde(no_tiene_una_region_de_origen, sarampion).
regionde(no_tiene_una_region_de_origen, cancer_de_mama).

% --- END KNOWLEDGE BASE TO DISEASES --- %
% --- END KNOWLEDGE BASE TO DISEASES --- %
% --- END KNOWLEDGE BASE TO DISEASES --- %
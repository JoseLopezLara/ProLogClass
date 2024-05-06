<p style="text-align: right;"><em>DATE: JANUARY - JUNE 2024</em></p>

## **Activity, Add new template to Eliza code**

### Made In: ProLog

#### Activity number: 27

#### **DESCRIPTION:**

#### I need add 20 new templates to elize code provider by teacher

________________________________________________________
________________________________________________________

#### Student: José López Lara

#### Control Number: 19120194

* [x] Student Email: <l19120194@morelia.tecnm.mx>
* [x] Personal Email: <jose.lopez.lara.cto@gmail.com>
* [x] GitHub Profile: [JoseLopezLara](https://github.com/JoseLopezLara)
* [x] Linkedin Profile: [in/jose-lopez-lara/](https://www.linkedin.com/in/jose-lopez-lara/)

________________________________________________________
________________________________________________________

### **Eliza**

* **New tampletes**

```ProLog
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
```

* **All Eliza Code**

```ProLog

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



% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

		 % pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([i, have, s(_), with, s(_), '.'], ['You', have, to, deal, with, your, 0, and, your, 1, in, a, mature, way, '.'], [2, 4]).
template([i, s(_),  _], [i, can, recommend, you, a, book, about, that, issue], []).
template([please, s(_), _], ['No', i, can, not, help, ',', i, am, just, a, machine], []). 
		 template([tell, me, a, s(_), _], ['No', i, can, not, ',', i, am, bad, at, that], []).

				  
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

```

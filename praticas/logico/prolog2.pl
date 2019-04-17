isMember(X,[X|T]).

isMember(X,[_|T]):-
  isMember(X,T).



ao_lado(X,Y,L):- nextto(X,Y,L).
ao_lado(X,Y,L):- nextto(Y,X,L).


um_entre(X,Y,[X,_,Y|T]).
um_entre(X,Y,[_|T]):-
  um_entre(X,Y,T).


% O avião do Cel. Milton solta fumaça vermelha.
% O rádio transmissor do Ten. Walter está com problemas.
% O piloto do avião que solta fumaça verde adora pescar.
% O Major Rui joga futebol nos finais de semana.
% O avião que solta fumaça verde está imediatamente à direita do avião que solta fumaça branca.
% O piloto que bebe leite está com o altímetro desregulado.
% O piloto do avião que solta fumaça preta bebe cerveja.
% O praticante de natação pilota o avião que solta fumaça vermelha.
% O Cap. Farfarelli está na ponta esquerda da formação.
% O piloto que bebe café voa ao lado do avião que está com pane no sistema hidráulico.
% O piloto que bebe cerveja voa ao lado do piloto que enfrenta problemas na bússola.
% O homem que pratica equitação gosta de beber chá.
% O Cap. Nascimento bebe somente água.
% O Cap. Farfarelli voa ao lado do avião que solta fumaça azul.
% Na formação, há um avião entre o que tem problema hidráulico e o com pane no altímetro.
% Um dos pilotos joga tênis.
% Há um avião com problema de temperatura.

solucao(Planes):-
  %piloto, cor, anomalia,bebida,esporte
  Planes = [_,_,_,_,_],
  member(plane(milton,vermelho,_,_,_), Planes),
  member(plane(walter,_,radio,_,_), Planes),
  member(plane(_,verde,_,_,pescar), Planes),
  member(plane(rui,_,_,_,futebol), Planes),
  nextto(plane(_,branco,_,_,_), plane(_,verde,_,_,_), Planes),
  member(plane(_,_,altimetro,leite,_), Planes),
  member(plane(_,preto,_,cerveja,_), Planes),
  member(plane(_,vermelho,_,_,natacao), Planes),
  [plane(farfarelli,_,_,_,_)|_] = Planes,
  ao_lado(plane(_,_,_,cafe,_), plane(_,_,hidraulico,_,_), Planes),
  ao_lado(plane(_,_,_,cerveja,_), plane(_,_,bussola,_,_), Planes),
  member(plane(_,_,_,cha,equitacao), Planes),
  member(plane(nascimento,_,_,agua,_), Planes),
  ao_lado(plane(farfarelli,_,_,_,_), plane(_,azul,_,_,_), Planes),
  um_entre(plane(_,_,hidraulico,_,_), plane(_,_,altimetro,_,_), Planes),
  member(plane(_,_,_,_,tenis), Planes),
  member(plane(_,_,temperatura,_,_), Planes).



positivos1([],[]).
positivos1([H|T],L) :- H > 0, positivos1(T,Resto), L = [H|Resto].
positivos1([H|T],L) :- H =< 0, positivos1(T,L).

positivos2([],[]).
positivos2([H|T],L) :- H > 0, L = [H|Resto], positivos2(T,Resto).
positivos2([H|T],L) :- H =< 0, positivos2(T,L).

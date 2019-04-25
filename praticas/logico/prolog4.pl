repete(0, _, []).
repete(N, C, L) :-
 N > 0,
 L = [C | T],
 N1 is N - 1,
 repete(N1, C, T).



impar(X) :-
  A is mod(X,2),
  A > 0.

par(X) :-
  A is mod(X,2),
  A == 0.


hasN([],0).
hasN([H|T],N) :-
  N1 is N-1,
  hasN(T,N1).

inc99([],[]).
inc99([H|T],[H2|T2]) :-
  H2 is H + 99,
  inc99(T,T2).

incN([],[],N).
incN([H|T],[H2|T2],N) :-
  H2 is H + N,
  incN(T,T2,N).

comment([],[]).
comment([H|T],[H2|T2]) :-
  string_concat("%%",H,H2),
  comment(T,T2).

onlyEven([],[]).
onlyEven([H|T],L) :-
  par(H),
  L = [H|T1],
  onlyEven(T,T1).


onlyEven([H|T],L) :-
  mod(H,2) > 0,
  onlyEven(T,L).

countdown(0,[]).
countdown(N,[H|T]) :-
  H is N,
  N1 is N-1,
  countdown(N1,T).

nRandom(0,[]).
nRandom(N,[H|T]) :-
  random(0,100,H),
  N1 is N-1,
  nRandom(N1,T).

potN0(0,[1]).
potN0(N,[H|T]) :-
  H is 2**N,
  N1 is N-1,
  potN0(N1,T).

zipmult([],[],[]).
zipmult([H|T],[H1|T1],[H2|T2]) :-
  H2 is H*H1,
  zipmult(T,T1,T2).


potencias(0,[]).
potencias(N,L1) :-
  L1 = [H|T],
  N1 is N-1,
  H is 2**N1,
  potencias(N1,T).




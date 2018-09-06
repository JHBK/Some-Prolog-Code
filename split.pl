split([], [], []).

split([H|T], [H|P], N) :-
  H>= 0,
  split(T, P, N).

split([H|T], P, [H|N]) :-
  H< 0,
  split(T,P,N).








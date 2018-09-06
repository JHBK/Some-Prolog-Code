
elemno([],0).
elemno([_|T],L) :- elemno(T,N),L is N + 1.


% A procedure to find the nth element
nthel(1,[H|_],H).
nthel(N,[_|T],El):- N1 is N-1, nthel(N1,T,El).
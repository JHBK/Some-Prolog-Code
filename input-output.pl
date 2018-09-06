
likes(hashim, fish).
likes(rahim, lamb).

go :-
        likes(hashim, X),
        likes(rahim, Y),
        write(X), nl,
        write(Y), nl.

cube(N,C) :- C is N * N * N.

cube :-
             read(X), calc(X).  /* read X then query calc(X). */



calc(stop) :- !.           /* if X = stop then it ends   */

calc(X) :- C is X * X * X, write(C),nl,cube.
                               /* calculate C and write it then ask again cube. */


write_elements([]).
write_elements([X|R]) :- write(X), write_elements(R).



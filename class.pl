
parent( light, kira).
parent( light, sofia).
parent( kira, lucy).
parent( kira, misa).
parent( misa, jhbk).
parent( pam, bob).
parent( tom, bob).
parent( tom, liz).
parent( tom, kira).

parent( bob, ann).
parent( bob, pat).
parent( pat, jim).


female( sofia).
female( lucy).
female( misa).
female( pam).
female( liz).
female( ann).
female( pat).


male( light).
male( kira).
male( jhbk).
male( tom).
male( bob).
male( jim).

child( Y, X)  :-parent( X, Y).


mother( X, Y)  :-
   parent( X, Y),
   female( X).

grandparent( X, Z)  :-
   parent( X, Y),
   parent( Y, Z).

sister( X, Y)  :-
   parent( Z, X),
   parent( Z, Y),
   female( X),
   not(X=Y).

uncle(X,Y):-
    parent( X, Y),
    parent( Z, X),
    parent( Z, B),
    male(B),
    not(B=X).
















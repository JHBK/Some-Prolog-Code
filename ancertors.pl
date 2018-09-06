parent('Hasib', 'Rakib').
parent('Rakib', 'Sohel').
parent('Rakib', 'Rekha').
parent('Rashid', 'Hasib').
grandparent(Gf, Gc) :- parent(Gf, X), parent(X, Gc).

male('Hasib'). male('Rakib'). male('Sohel').

brother(B, X) :- parent(Y, B), parent(Y, X), male(B), not(B = X).
sister(S, X) :- parent(Y, S), parent(Y, X), not(male(S)), not(S = X).

ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-parent(X,Z), ancestor(Z,Y).

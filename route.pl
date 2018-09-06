

directTrain(dhaka, khulna).
directTrain(kustia, dhaka).
directTrain(barisal, kustia).
directTrain(chittangong, barisal).
directTrain(comilla, chittagong).
directTrain(barisal, comilla).
directTrain(sylhet,dhaka).



directPath(X, Y) :-
    directTrain(X, Y).

directPath(X, Y) :-
    directTrain(Y, X).

%% base case
route(Y, Y, RevL, L) :-
    reverse(RevL, L).

%% inductive case
route(X, Y, RevL, L) :-
    directPath(X, Z),
    not(member(Z, RevL)),
    route(Z, Y, [Z | RevL], L).

%% wrapper
route(X, Y, L) :-
    route(X, Y, [X], L).

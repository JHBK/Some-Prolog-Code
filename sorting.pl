
sort12([], []):-!.
sort12(L1, L2):- L1=[H|T], sort12(T, T1),
                    insert12(H, T1, L2).
insert12(El,[], [El]):-!.
insert12(El, L1, L2):-L1=[H|_], not(El > H), L2 = [El|L1], !.
insert12(El, L1, L2):-L1=[H|T], insert12(El, T, Lx), L2 = [H|Lx].





sort21([], []):-!.
sort21(L1, L2):- L1=[H|T], sort21(T, T1),
                    insert21(H, T1, L2).
insert21(El,[], [El]):-!.
insert21(El, L1, L2):-L1=[H|_], not(El < H), L2 = [El|L1], !.
insert21(El, L1, L2):-L1=[H|T], insert21(El, T, Lx), L2 = [H|Lx].

/* Exercise 3. Modify the code such that it can sort a list of structures like
[node(4, c, f, 35), node(3, a, c, 40), node(2, b, d, 50), node(5, b, e, 36), node(1, a, b, 27)]
in descending order of serial number (1st argument of the predicate).
*/


execute(GN) :- listtran(GN,EnglishNumbers).


tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([],[]).
listtran([H1|T1],[H2|T2]) :- tran(H1,H2),write(H1),write(' is '),write(H2),write('\n'),listtran(T1,T2).


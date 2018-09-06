%% lab exercise 1
mySelect(X,[X|Xs],Xs).
mySelect(X,[Y|Ys],[Y|Zs]) :- X \= Y, mySelect(X,Ys,Zs).
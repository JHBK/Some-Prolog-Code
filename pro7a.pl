% 5+7+10+14+19.
sum(1,5).
sum(N,S):- N>1,N1 is N-1,sum(N1,S1),sum1(N1,S2),T is 5+S2,S is S1+T.
sum1(1,2).
sum1(N,S):-N>1,N1 is N-1,sum1(N1,S1),S is S1+N+1.

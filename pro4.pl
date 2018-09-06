sum(FT,_,1,FT).
sum(FT,I,N,S):-N>1,N1 is N-1,sum(FT,I,N1,S1),S is S1+FT+I*N1.

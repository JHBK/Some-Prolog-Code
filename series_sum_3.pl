series_sum3(FT,_,1,FT).
series_sum3(FT,I,N,S):- N>1, N1 is N-1,
	series_sum3(FT,I,N1,S1),S is S1+FT+I*N1.
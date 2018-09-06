factorial(0,1).
factorial(X,Y):- X>=1,  X1 is X-1,
	factorial(X1,Y1), Y is X * Y1.

odd_num_sum(1,1).
odd_num_sum(N,S):- N>1, N1 is N-1,
	odd_num_sum(N1,S1), S is S1+2*N1+1.

series_sum1(1,100).
series_sum1(N,S):- N>1, N1 is N-1,
	series_sum1(N1,S1), T1 is 100+N1*5,
	S is S1 + T1.

series_sum2(0,0).
series_sum2(N,S):- N>0, N1 is N-1,
	series_sum2(N1,S1), T1 is 9+N, T2 is 9+2*N,
	S is S1 + T1 * T2.

series_sum3(FT,_,1,FT).
series_sum3(FT,I,N,S):- N>1, N1 is N-1,
	series_sum3(FT,I,N1,S1),S is S1+FT+I*N1.

% 1+4+9+16+......

sum1(1,3).
sum1(N,T):-
	N>1,
	N1 is N-1,
	sum1(N1,T1),
	T is T1+(2*N+1).



sum(1,1).
sum(N,S):-
	%sum1(N,S2),
	N>1,
	N1 is N-1,
	sum(N1,S1),
	sum1(N1,T),
	T1 is 1+T,
	S is S1+T1.

%19+22+27+34+....
sum2(1,3).
sum2(N,S):-
	N>1,
	N1 is N-1,
	sum2(N1,S1),
	S is S1+(2*N+1).

sum3(1,19).
sum3(N,S):-
	N>1,
	N1 is N-1,
	sum3(N1,S1),
	sum2(N1,S2),
	T1 is 19+S2,
	S is S1+T1.


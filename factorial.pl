factorial(0,1).
factorial(N,F):-
	N>0,
	N1 is N-1,
	factorial(N1,F1),
	F is N*F1.


even(1,2).
even(N,S):-
	N>1,
	N1 is N-1,
	even(N1,S1),
	S is S1+2*N.
avgeven(N,A):-
	even(N,O),
	A is O/N.



odd(1,1).
odd(N,O):-
	N>1,
	N1 is N-1,
	odd(N1,O1),
	O is O1+(2*N-1).
avg(N,A):-
	odd(N,O),
	A is O/N.


series(1,1).
series(N,S):-
	N>1,
	N1 is N-1,
	series(N1,S1),
	S is (N*(N+1)/2).



ser(1,100).
ser(N,S):-
	N>1 ,
	N1 is N-1,
	ser(N1,S1),


	S is S1+5.
sum3(N,T):-
ser(N,S),
	T is (N*(100+S)/2).


sum1(1,3).
sum1(N,P):-
	N>1,
	N1 is N-1,
	sum(N1,P1),
	P1 is P1+4.
sum4(N,T):-
	sum1(N,P),
	T is (N*(3+P)/2).

















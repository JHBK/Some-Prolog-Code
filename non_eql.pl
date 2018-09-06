sum(FT,_,_,1,FT).
sum(FT,I1,I2,N,S):-N>1,
	N1 is N-1,
	sum(FT,I1,I2,N1,S1),
	I3 is I2-I1,
	sum1(I1,I3,N1,S2),
	T1 is FT+S2,
	S is S1+T1.
sum1(I1,_,1,I1).
sum1(I1,I3,N,S):-
	N>1,

	N1 is N-1,
	sum1(I1,I3,N1,S2),
	S is S2+ I1+I3*N1.


parent( pam, bob).
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).
parent(ann,dog).

male(bob).
male(tom).
male(jim).
%male(ann).

child(X,Y):-
	parent(Y,X).

mother(X,Y):-parent(X,Y), not(male(X)),not(X=Y).
grandparent(X,Y):-parent(Z,Y),parent(X,Z).
sister(X,Y):-parent(Z,X),parent(Z,Y),not(male(X)),not(X=Y).
predecessor(X,Y):-parent(X,Y).
predecessor(X,Y):-parent(Z,Y),predecessor(X,Z).
%progeny(X,Z):-parent(Z,X).
%progeny(X,Z):-
	%parent(Y,X),progeny(Y,Z),not(X=Y).



progeny(Y,X) :- parent(X,Y).
progeny(Y,X) :- parent(Z,Y),progeny(Z,X).
brother(X,Y):- parent(Z,X),parent(Z,Y),male(X),not(X=Y).
uncle(X,Y):-parent(Z,Y),brother(X,Z),male(X).
cousin(X,Y):-parent(Z,Y),brother(X,Z),parent(X,P).



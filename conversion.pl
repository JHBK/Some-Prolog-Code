
start:-getvalue(X),calc(X).
getvalue(X):-write('Input a value: '),read(X).
calc(X):-Y is  (X*9/5)+32, write('\nConversion of celsius to Farenhit is '), write(Y),
A is (X+273),write('\nConversion of celsious to kelvin is '),write(A),
B is (2.20 *X),write('\nConversion of kg to pound is '),write(B),
C is(0.0833 *X),write('\nConversion of inch to feet is '),write(C),
D is(0.025 *X),write('\nConversion of inch to meter is '),write(D),
E is(2.54 *X),write('\nConversion of inch to cm is '),write(E),
F is(0.3048 *X),write('\nConversion of feet to meter is '),write(F).

enjoys(vincent,X) :- burger(X), neg(big_kahuna_burger(X)).

neg(Goal) :- Goal,!,fail.
neg(Goal).


burger(X) :- big_mac(X).
burger(X) :- big_kahuna_burger(X).
burger(X) :- whopper(X).


big_mac(a).
big_mac(c).
big_kahuna_burger(b).
whopper(d).

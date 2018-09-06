
sublist([],[]).

sublist([First|Rest],[First|Sub]):- sublist(Rest,Sub).

sublist([_|Rest],Sub):- sublist(Rest,Sub).


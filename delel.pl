% A procedure to delete a given element
delel(H,[H|T],T).
delel(El,[H|T],L):- delel(El,T,L1), L = [H|L1].
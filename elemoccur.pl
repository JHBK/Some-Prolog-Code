elementOccurences(_,[],0).
elementOccurences(X,[X|L],N) :- elementOccurences(X,L,M), N is M + 1.
elementOccurences(X,[Y|L],N) :- X \= Y, elementOccurences(X,L,N).
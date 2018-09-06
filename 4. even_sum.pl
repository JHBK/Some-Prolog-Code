even_sum(1,2).
even_sum(N,F) :- N>1,
	         N1 is N-1,
	         even_sum(N1,F1),
	         F is  F1+(N*2).

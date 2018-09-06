odd_num_sum(1,1).
odd_num_sum(N,S):- N>1, N1 is N-1,
	odd_num_sum(N1,S1), S is S1+2*N1+1.

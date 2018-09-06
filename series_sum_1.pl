
% Define a recursive procedure to find the sum of the 1st n terms of the
% following series. 100+105+110+…




series_sum1(1,100).
series_sum1(N,S):- N>1, N1 is N-1,
	series_sum1(N1,S1), T1 is 100+N1*5,
	S is S1 + T1.

% Define a recursive procedure to find the sum of the 1st n terms of the
% following series. 3+7+11+15+ .......



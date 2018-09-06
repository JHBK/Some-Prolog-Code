go_loop1:- write('\nHow many computations?'),
		read(N), doloop1(N).

  % Recursive Procedure to repeat a process (finddeslog) a given number of times
	doloop1(0).
	doloop1(N):- N>0, finddeslog, N1 is N-1, doloop1(N1).

  % Definition of the Process
	finddeslog:- getposnum(X), Y is log10(X),
		write('\nLog of '), write(X), write(' is '),
		write(Y), write('.').

  % To repeat some activity as many times as intended, cut(!) to end
	getposnum(X):-	rpt,
			write('\nEnter a positive number:'),
			read(X), X>0.
  % User defined 'repeat'
        rpt.
        rpt:-rpt.

/*
Exercise: Write a program to repeat for a given number of times the process of finding the sum of first N elements of an equal interval series given N, the interval and the first element. Ensure that all inputs are validated.
*/

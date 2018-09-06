go:- write('\nEnter the name of the patient:'),
	read(Patient), hypothesis(Patient, Disease), nl,
	write(Patient), write(' probably has '), write(Disease), write('.'),!.

go:- write('\nSorry, I think, I am not competent enough '), nl,
	write('to diagnose the disease.').

symptom(Patient, fever):-
	write('\nDoes '), write(Patient), write(' have a fever?(y/n)'),
	read(Reply), Reply = 'y'.

symptom(Patient, headache):-
	write('\nDoes '), write(Patient), write(' have a headache?(y/n)'),
	read(Reply), Reply = 'y'.

symptom(Patient, runny_nose):-
	write('\nDoes '), write(Patient), write(' have a runny_nose?(y/n)'),
	read(Reply), Reply = 'y'.

symptom(Patient, sneezing):-
	write('\nDoes '), write(Patient), write(' have a sneezing?(y/n)'),
	read(Reply), Reply = 'y'.

hypothesis(Patient, flu):-
	symptom(Patient, headache), symptom(Patient, fever),
	symptom(Patient, runny_nose).

hypothesis(Patient, common_cold):-
	symptom(Patient, sneezing),
	symptom(Patient, runny_nose).



/* Exercise 2: Study the program above, run and analyse the output against various queries posed to it, and then write a 'Weather Forecasting System' that is analogous to it.
*/






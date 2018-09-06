lives('Karim', 'Dhaka').
lives('Ratan', 'Sylhet').
lives('Rahim', 'Khulna').
lives('Modhu', 'Bogra').



	go:- nl,
		write('STUDENT'), tab(15), write('TOWN'),
		/* !, */
		lives(Student, Town), /*!, */ not(Town = 'Dhaka'),!,fail,nl,
		write(Student),tab(15), write(Town).
	go.

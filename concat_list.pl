combine([], List2, List2).
combine([H|T], List2, [H | List3]) :- combine(T, List2, List3).

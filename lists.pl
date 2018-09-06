/* A list contains simple or compound objects of same type within '[]',
   and accessed sequentially by dividing it into the 'Head' (1st element)
   and 'Tail' (list with the rest of the elements).  */

% A procedure to find the sum of the elements
soe([],0).
soe([H|T],N):- soe(T,N1), N is N1+H.





/* Example with built in function 'length': */
avg(L,A):- soe(L,S), length(L,N), A is S/N.

/* Examples with built in function 'append': */
go_apnd1 :- append([a, b, c], [d, e], X), write(X).
go_apnd2 :- append([a, b, c], X,[a, b, c, d, e]), write(X).
go_apnd3 :- append(X,[d, e],[a, b, c, d, e]), write(X).
go_apnd4 :- append([a, b, c], [d, e],[a, b, c, d, e]).

/* Example with built in function 'member': */
goMemberCheck1 :- member(b,[a, b, c]).
goMemberCheck2 :- member(d,[a, b, c]).

/* Example with built in function 'reverse': */
go_reverse :- reverse([a, b, c], X), reverse(X,Y), write(X), nl, write(Y).

/* Example with built in function 'sort': */
go_sort:- write('Enter a list:'),read(Lt), sort(Lt, SL_ab), write(SL_ab).


/* Exercise:
1. Write a procedure to add an element at the end of a list.
2. Write a procedure to delete the last n elements from a list.
3. Write a procedure to find the sum of the elememts from two given
positions of a list.
*/














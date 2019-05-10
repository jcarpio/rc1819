<<<<<<< HEAD


% ord_burbuja(+Lista, -R)
% es cierto si R unifica con una lista que contiene
% los elementos de Lista ordenados de menor a mayor.
% Lista puede contener elementos repetidos.


ord_burbuja(L, L):- ordenada(L).

ord_burbuja(L, R3):- append(L1, [E1, E2|L2], L),
                   E1 > E2,
				   append(L1, [E2, E1|L2], R2),
				   ord_burbuja(R2, R3).




% ordenada(+Lista)
% es cierto si los elementos de Lista están ordenados de 
% menor a mayor. Lista puede contener elementos repetidos.

ordenada([]).
ordenada([_]).
=======


% ord_burbuja(+Lista, -R)
% es cierto si R unifica con una lista que contiene
% los elementos de Lista ordenados de menor a mayor.
% Lista puede contener elementos repetidos.


ord_burbuja(L, L):- ordenada(L).

ord_burbuja(L, R3):- append(L1, [E1, E2|L2], L),
                   E1 > E2,
				   append(L1, [E2, E1|L2], R2),
				   ord_burbuja(R2, R3).




% ordenada(+Lista)
% es cierto si los elementos de Lista están ordenados de 
% menor a mayor. Lista puede contener elementos repetidos.

ordenada([]).
ordenada([_]).
>>>>>>> b05052c3ae6140d2a944d6180dc227533e83c22a
ordenada([E1,E2|Resto]):- E1 =< E2, ordenada([E2|Resto]).
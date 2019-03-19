

% ord_burbuja(+Lista, -R)
% es cierto si R unifica con una lista que contiene
% los elementos de Lista ordenados de menor a mayor.
% Lista puede contener elementos repetidos.



% ordenada(+Lista)
% es cierto si los elementos de Lista están ordenados de 
% menor a mayor. Lista puede contener elementos repetidos.

ordenada([]).
ordenada([_]).
ordenada([E1,E2|Resto]):- E1 =< E2, ordenada([E2|Resto]).
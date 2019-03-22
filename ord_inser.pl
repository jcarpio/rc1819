
% ord_inser(+Lista, -R).
% es cierto si R unifica con una lista que contiene
% los elementos de Lista ordenados de menor a mayor.
% Lista puede contener elementos repetidos.

ord_inser([], []).
ord_inser([Ca|Resto], R2):-
  ord_inser(Resto, R),
  insertar_ord(Ca, R, R2).


% insertar_ord(+E, +L, -R)
% es cierto cuando R unifica con una lista
% que contiene los elementos de L con E
% insertado en su posición correcta. 
% L puede tener elementos repetidos y L está ordenada de menor a mayor.

insertar_ord(E, [], [E]). 
insertar_ord(E, [Ca|Resto], [E, Ca|Resto]):- 
  E =< Ca.
insertar_ord(E, [Ca|Resto], [Ca|R]):-
  E > Ca,
  insertar_ord(E, Resto, R).
  



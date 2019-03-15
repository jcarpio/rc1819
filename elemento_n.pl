% elemento_enesimo(+Pos,  +Lista,  -Elem)
% que es cierto cuando Elem unifica con el
%  mento que ocupa la posición Pos dentro de Lista.

elemento_enesimo(1, [Ca|_], Ca).

elemento_enesimo(Pos, [Ca|Resto], R):-
   Pos > 1, Pos2 is Pos -1,
   elemento_enesimo(Pos2, Resto, R).
   
<<<<<<< HEAD


% quicksort(+Lista, -R)
% es cierto cuando R unifica con una lista
% que contiene los elementos de L con E
% insertado en su posición correcta. 
% L puede tener elementos repetidos y L está ordenada de menor a mayor.

quicksort([], []).
quicksort([Ca|Resto], R):-
  dividir(Ca, Resto, Me, Ma),
  quicksort(Me, RMe),
  quicksort(Ma, RMa),
  append(RMe, [Ca|RMa], R).
  
  
% dividir(+P, +Lista, -Menores, -Mayores)
% es cierto cuando Menores unifica con
% los elementos de Lista que son menores
% o iguales que P y Mayores unifica con los
% elementos de Lista que son mayores que P

dividir(_, [], [], []).
dividir(P, [Ca|Resto], [Ca|RMe], RMa):-
  Ca =< P,
  dividir(P, Resto, RMe, RMa).  
dividir(P, [Ca|Resto], RMe, [Ca|RMa]):-
  Ca > P,
  dividir(P, Resto, RMe, RMa).



=======


% quicksort(+Lista, -R)
% es cierto cuando R unifica con una lista
% que contiene los elementos de L con E
% insertado en su posición correcta. 
% L puede tener elementos repetidos y L está ordenada de menor a mayor.

quicksort([], []).
quicksort([Ca|Resto], R):-
  dividir(Ca, Resto, Me, Ma),
  quicksort(Me, RMe),
  quicksort(Ma, RMa),
  append(RMe, [Ca|RMa], R).
  
  
% dividir(+P, +Lista, -Menores, -Mayores)
% es cierto cuando Menores unifica con
% los elementos de Lista que son menores
% o iguales que P y Mayores unifica con los
% elementos de Lista que son mayores que P

dividir(_, [], [], []).
dividir(P, [Ca|Resto], [Ca|RMe], RMa):-
  Ca =< P,
  dividir(P, Resto, RMe, RMa).  
dividir(P, [Ca|Resto], RMe, [Ca|RMa]):-
  Ca > P,
  dividir(P, Resto, RMe, RMa).



>>>>>>> b05052c3ae6140d2a944d6180dc227533e83c22a
 
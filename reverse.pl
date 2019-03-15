

% insertar_final(+E, +L, -R)
% es cierto si R unifica con una lista que contiene
% los elementos de L en el mismo orden con E 
% insertado al final

insertar_final(E, [], [E]).

insertar_final(E, [Ca|Resto], [Ca|R]):- 
  insertar_final(E, Resto, R).

% reverse(?L, ?R)
% es cierto si R unifica con una lista que 
% contine los elementos de L en orden inverso.


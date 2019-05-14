
% anchura_gen(+Arbol_gen, -Lista)
% es cierto cuando Lista unifica con las 
% etiquetas de Arbol_gen recorriendo el
% arbol en anchura.

anchura_gen(t(E, L), [E|R]):- anchura_gen(L, R).

% anchura_gen(+Lista_arboles, -Lista)
% es cierto cuando Lista unifica con las etiquetas
% de los árboles de Lista_arboles rocorridos 
% en anchura.

anchura_gen([], []).

anchura_gen([t(E, L)|Resto], [E|RT]):-
  append(Resto, L, R),
  anchura_gen(R, RT).
  
% tree_gen3(t(a,[t(b,[t(f,())]), t(c,[t(g,[t(j,[])]),t(h,[])]), t(d,[]), t(e,[t(i,[])])])). 




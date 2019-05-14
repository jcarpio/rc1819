
% num_nodos_gen(+Arbol_gen, -Num)
% es cierto cuando Num unifica con el número de nodos
% de Arbol_gen


num_nodos_gen(t(_, Lista_hijos), R):-
  num_nodos_lista(Lista_hijos, RL), R is RL + 1.
  
  
% num_nodos_lista(+Lista_arboles, -Num)
% es cierto cuando Num unifica con el número de nodos de la 
% lista de árboles genéricos Lista_hijos
  
num_nodos_lista([], 0).

num_nodos_lista([Cab|Resto], R):-
  num_nodos_gen(Cab, RCa),
  num_nodos_lista(Resto, RResto),
  R is RCa + RResto.
 
tree_gen1(t(a,[t(b,[]), t(c,[]), t(d,[]), t(e,[])])). 
 
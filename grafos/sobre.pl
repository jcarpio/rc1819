% Ciclos de un grafo

% Grafo 1
grafo1(grafo([a,b,c,d], [a(a,b), a(b,c), a(c,a), a(c,d), a(d,a)])).

grafo3(grafo([a,b,c,d,e], [a(a,b), a(a,c), a(b,c), a(b,d), 
                           a(b,e), a(c,d), a(c,e), a(d,e)])).

% conectado(Grafo, Ini, Fin)
% cierto si el vértice Ini está conectado mediante una arista
% con el vértice Fin en Grafo.

conectado(grafo(_, A), Ini, Fin) :- member(a(Ini, Fin), A).
conectado(grafo(_, A), Ini, Fin) :- member(a(Fin, Ini), A).

% camino(+Grafo, +Ini, +Fin, +Visitados, -Camino, -Peso)
% es cierto si Camino unifica con el camino representado
% como vértices/aristas que va desde 
% inicio hasta Fin sin repetir vértices/aristas y con un
% coste total de Peso.

% Camino como lista de aristas y visitados como lista de aristas
camino(grafo(_,A), Ini, Fin, _ , [a(Ini,Fin), a(Fin,Ini)]):- member(a(Ini,Fin), A).

camino(G, Ini, Fin, Visitados, [a(Ini,Tmp)|Camino]):-
  conectado(G, Ini, Tmp), 
  \+ member(a(Ini,Tmp), Visitados), 
  camino(G, Tmp, Fin, [a(Ini,Tmp), a(Tmp, Ini)|Visitados], Camino).
  
ciclos(grafo(V,A), R):-      
   bagof(Ciclo, ciclo(grafo(V,A), Ciclo), R). 
   
ciclo(grafo(V,A), Ciclo):- 
  member(Vertice, V), 
  camino(grafo(V,A), Vertice, Vertice, [], Ciclo).   
   
  
% Problemas de Estados : Misioneros y Canibales

% 1. Estado
% estado(MisionerosDch, CanibalesDch, SituacionBote)

% 2. Movimientos

mov(pasar(M, C, izquierda), estado(MD, CD, derecha), 
  estado(MDN, CDN, izquierda)):- 
  pasar(M, C),
  M =< MD, C =< CD,
  MDN is MD - M, CDN is CD - C,
  \+ no_valido(estado(MDN, CDN, _)).
  
mov(pasar(M, C, derecha), estado(MD, CD, izquierda),
  estado(MDN, CDN, derecha)):-
  pasar(M,C),
  MI is 3 - MD, CI is 3 - CD,
  M =< MI, C =< CI,
  MDN is MD + M, CDN is CD + C,
  \+ no_valido(estado(MDN, CDN, _)).
 
% pasar(Misioneros, Canibales).
% representa el número de Misioneros y Caníbales que pasarán
% de un lado a otro del rio.

pasar(2, 0).
pasar(0, 2).
pasar(1, 1).
pasar(1, 0).
pasar(0, 1).

% no_valido(estado(MisionerosDch, CanibalesDch, SituacionBote)).
% representa un estado no válido.

no_valido(estado(2,3, _)).
no_valido(estado(1,3, _)).
no_valido(estado(1,2, _)).
no_valido(estado(1,0, _)).
no_valido(estado(2,0, _)).
no_valido(estado(2,1, _)).

% camino(+EstadoInicial, +EstadoFinal, +Visitados, -Camino)
% es cierto cuando Camino unifica con la lista de 
% movimientos necesarios para ir del EstadoInicial al EstadoFinal
% sin repetir los estados Visitados.

camino(Ini, Ini, _, []).

camino(Ini, Fin, Visitados, [pasar(M,C, Direccion)|Camino]):-
  mov(pasar(M, C, Direccion), Ini, Temp),
  \+ member(Temp, Visitados),
  camino(Temp, Fin, [Temp|Visitados] , Camino).
 

 


 

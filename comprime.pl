

% comprime(+Lista, -Resultado)
% es cierto cuando Resultado unifica con una lista
% en el siguiente formato:
%
% comprime([1,1,1,2,2,3,4,4,4], R).
% R= [(1,3), (2,2), (3,1), (4,3)]
%
%
% Tupla
% ('Jose', 21, '1,60') 
%

comprime([], []).
comprime([E], [(E,1)]).
comprime([H, H|Tail], [(E,N2)|R]):- comprime([H|Tail], [(E,N)|R]), N2 is N+1.
comprime([H1, H2|Tail], [(H1,1)|R]):- H1 \= H2, comprime([H2|Tail], R).

% [1,1,1,2,2,3,4,4] -> [(1,3), (2,2), (3,1), (4,2)]
% [1,1,2,2,3,4,4] -> [(1,2), (2,2), (3,1), (4,2)]

% [0,1,1,1,2,2,3,4,4] -> [(0,1), (1,3), (2,2), (3,1), (4,2)]
% [1,1,1,2,2,3,4,4] -> [(1,3), (2,2), (3,1), (4,2)]


% mayor(+Lista, -Tupla)
% es cierto si Tupla unifica con la tupla (E,N) de mayor N
% de la lista Lista en formato: [(1,3), (2,2), (3,1), (4,2)]
% dónde el primer valor de la tupla es el elemento y el segudo
% el número de veces que se repite.

mayor([(E,N)], (E,N)).
mayor([(_,NH)|T], (E,N)):- mayor(T, (E,N)), N > NH. 
mayor([(EH,NH)|T], (EH,NH)):- mayor(T, (_,N)), N =< NH. 


masveces(L, E, N):- msort(L, L2), comprime(L2, R), mayor(R, (E, N)).


% [1,1,2,2,1,1,3,3,4,3,4] 
% [1,2,2,1,1,3,3,4,3,4]  -> (1,3)
%                            (3,3)

% masveces2([], _, 0).
% masveces2([E|T], E, N2):- masveces2(T, E, N), N2 is N+1.
% masveces2([EH|T], E, N):- masveces2(T, E, N), EH \= E.

masveces2([], []).
masveces2([H|T], [(H, N2)]):- masveces2(T, R), member((H, N), R), N2 is N+1.
masveces2([H|T], R):- masveces2(T, R), \+ member((H, N), R).
masveces2([H|T], [(H, 1)]):- masveces2(T, []).

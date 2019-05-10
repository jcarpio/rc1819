

% primo(+X)
% Es cierto si X es un número primo

primo(X):- divisores(X, [X,1]).

% divisores(+X, -ListaDivisores)
% Es cierto si ListaDivisores unifica con 
% la lista de números que dividen a X.
% Resto de la división entera es igual a 0
% Resto is X mod Y.

divisores(X, R):- divisores(X, X, R).

% primos_entre_xy(+X, +Y, -R)
% Es cierto si R unifica con los 
% números primos que van desde X hasta Y.

primos_entre_xy(X, Y, []):- X > Y.
primos_entre_xy(X, Y, [X|R]):-
  X =< Y,
  X2 is X + 1, 
  primo(X),
  primos_entre_xy(X2, Y, R).

primos_entre_xy(X, Y, R):-
  X =< Y,
  X2 is X + 1, 
  \+ primo(X),
  primos_entre_xy(X2, Y, R).



% divisores(+X, +Y, -ListaDivisores)
% Es cierto si ListaDivisores unifica con 
% los divisores de X que van desde 1 hasta Y.

divisores(X, 1, [1]):- number(X).
divisores(X, Y, [Y|R]):- Y > 1, Y2 is Y-1, 
   0 is X mod Y,
   divisores(X, Y2, R).

divisores(X, Y, R):- Y > 1, Y2 is Y-1, 
   Z is X mod Y, Z \= 0,
   divisores(X, Y2, R).   
   









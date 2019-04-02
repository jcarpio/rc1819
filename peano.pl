
% Aritmética de Peano
% 
%
% suma(?X, ?Y, ?Z)
% Es cierto si Z unifica con la suma
% de X e Y en aritmética de Peano


suma(0, Y, Y).
suma(n(X), Y, n(Z)):-  suma(X, Y, Z).

% resta(?X, ?Y, ?Z)
% Es cierto si Z unifica con la X - Y

resta(X, 0, X).
resta(X, n(Y), Z):- resta(X, Y, n(Z)).

% producto(?X, ?Y, ?Z)
% Es cierto si Z es unifica con un número
% en aritmética de Peano resultado de
% sumar X veces el número Y.

producto(0, _, 0).
producto(n(X), Y, Z2):- producto(X, Y, Z),
  suma(Z, Y, Z2).

% p2d(+P, -D)
% es cierto si D unifica con el 
% número decimal equivalente a su
% representación en aritmética de Peano

p2d(0, 0).
p2d(n(X), R):- nonvar(X), p2d(X, D), R is D + 1. 


% d2p(+D, -P)
% es cierto si P unifica con el 
% número en aritmética de Peano 
% equivalente a D en decimal.

d2p(0, 0).
d2p(X, n(P)):- X >= 1, X2 is X-1, d2p(X2, P).


% division(?X, ?Y, ?Z)
% es cierto si Z es el resultado de la división 
% entera de X entre Y
division(X, Y, 0) :- menor(X, Y).
division(X, Y, n(Z)):-  resta(X, Y, R), division(R, Y, Z). 

%menor(?X, ?Y)
% es cierto si X es menor estricto que Y
% menor(0, n(_)). no es cierto siempre!
menor(0, n(X)):- peano(X).
menor(n(X), n(Y)):- menor(X, Y).

% modulo(?X, ?Y, ?Z)
% es cierto si Z unifica con el resto de la división
% entera de X entre Y

modulo(X, Y, X):- menor(X, Y).
modulo(X, Y, Z):- mayor_o_igual(X,Y), resta(X, Y, X2), modulo(X2, Y, Z). 

% mayor_o_igual(?X, ?Y)
% es cierto si X es mayor o igual que Y
mayor_o_igual(n(X), 0) :- peano(X).
mayor_o_igual(0, 0).
mayor_o_igual(n(X), n(Y)):- mayor_o_igual(X, Y).

% peano(X)
% es cierto si X es un número válido en 
% la representación de la Aritmética de Peano

peano(0).
peano(n(X)):- peano(X).


% (Entera, Lista de números en Peano)
% (n(n(n(0))), n(n(0)) )  = 3.2
% Representa un número real en aritmética de Peano siendo
% Entera y Decimal dos números válidos en AP




 





% natural(N)
% es cierto si N es un número natural

natural(1).
natural(N) :- N > 1, N2 is N-1, natural(N2).
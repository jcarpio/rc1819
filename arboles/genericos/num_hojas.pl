
% num_hojas_gen(+Arbol_gen, -Num)
% es cierto cuando Num unifica con el número de hojas
% de Arbol_gen



tree_gen1(t(a,[t(b,[]), t(c,[]), t(d,[]), t(e,[])])). 

tree_gen2(t(a,[t(b,[t(f,()), t(g,[])]), t(c,[]), t(d,[t(h,[])]), t(e,[])])). 

module Secuencia where

--Secuencia: A partir de una lista, devuelve la secuencia con la formacion de la lista.
--[2,5,-1,4,3,0,9,-2] -> [[],[2],[2,5]...]

secuencia::[Int]->[[Int]]
secuencia l = foldl (\acum n -> acum ++ [(last acum) ++ [n]])[[]] l

secuencia'::[Int]->[[Int]]
secuencia' []=[[]]
secuencia' l = secuencia' (init l) ++ [l]
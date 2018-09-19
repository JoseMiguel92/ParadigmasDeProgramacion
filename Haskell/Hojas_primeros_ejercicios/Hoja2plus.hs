module Hoja2plus where
{-
A
Dada la siguiente definición de función, 
donde se recibe una lista de números enteros y 
los invierte
-}
invertirLista :: [Int] -> [Int]
invertirLista = foldr (\x acum -> acum ++ [x]) []

invertirLista' :: [Int] -> [Int]
invertirLista' = foldl (\acum x -> (x:acum)) []

verdad :: [Bool] -> Bool
verdad = foldr (&&) True
-- > verdad [1<2, False, 3*4<20]
-- False
-- (1<2 && (False && (3*4<20 && True))))
--                    True   && True
--          False &&      True
-- True &&       False
--    False
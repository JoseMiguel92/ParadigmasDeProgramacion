module Examen_30Junio2015 where
    {-
    Ejercicio 3
    Definir la funcion productoEscalar, listas comprension, zip y foldl
    -}
    productoEscalar :: [Integer] -> [Integer] -> Integer
    productoEscalar l1 l2 = foldl (+) 0 [x*y | (x,y) <- zip l1 l2]

    {-
    Ejercicio 4 A
    Devuelve la lista original con el numero de elementos que indica el entero
    -}
    mystery :: Int -> [a] -> [a]
    mystery _ [] = []
    mystery n (x:xs) = if n <= 0 then [] else x : mystery (n-1) xs
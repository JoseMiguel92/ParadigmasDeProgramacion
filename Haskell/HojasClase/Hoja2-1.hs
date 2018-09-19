module Hoja21 where
    {-
    Se piden diferentes funciones que hagan uso de la función foldr o foldl
    para resolver lo siguiente:
    1. Reciba una lista de enteros y devuelva la suma de sus dobles.
    2. Reciba una lista de enteros y devuelva la suma de sus cuadrados.
    3. Reciba una lista de enteros y un entero y lo inserte al final de dicha
       lista.
    4. Reciba una lista y un número entero y devuelva dicha lista eliminando las
    apariciones de ese número entero.
    -}
    ejercicio1 :: [Integer] -> Integer
    ejercicio1 l = foldr (+) 0 (map (*2) l) 

    ejercicio2 :: [Integer] -> Integer
    ejercicio2 l = foldr (+) 0 (map (^2) l)

    ejercicio3 :: [Integer] -> Integer -> [Integer]
    ejercicio3 l x = foldr (:) [x] l
    --ejercicio3 l x = foldl (++) x l

    ejercicio4 :: [Integer] -> Integer -> [Integer]
    --ejercicio4 l e = foldl (\acum x-> if (x == e) then acum else acum ++ [x]) [] l
    ejercicio4 ls x = foldr (\e acum -> if (e == x) then acum else e:acum) [] ls
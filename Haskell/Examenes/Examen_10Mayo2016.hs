module Examen_10Mayo2016 where
    {- Ejercicio 1
    Implementa una función en Haskell que reciba una lista de entero y devuelva
    la lista con el doble de cada entero si éste es impar o con su mitad, si
    éste es par.
    -}
    tratamiento :: [Integer] -> [Integer]
    tratamiento [] = []
    tratamiento l = foldl (\acum x -> if (x `mod` 2 == 0) then acum++[(x `div` 2)] else acum++[(x*2)] )[] l
    
    tratamientoMap :: [Integer] -> [Integer]
    tratamientoMap [] = []
    tratamientoMap l = map trataAux l

    trataAux :: Integer -> Integer
    trataAux x = (if (x`mod`2==0)then (x `div`2) else (x*2))

    tratamiento' :: [Integer] -> [Integer]
    tratamiento' [] = []
    tratamiento' (n:ns)
        |even n = [n`div`2]++ tratamiento' ns
        |otherwise = [n*2]++ tratamiento' ns
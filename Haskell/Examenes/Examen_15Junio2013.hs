module Examen_15Junio2013 where
    {-
    Ejercicio 2
    Criba Erastostenes
    
    erastotenes :: Integer -> [Integer]
    erastotenes n = 

    erastotenesAux :: Integer -> [Integer] -> [Integer]
    erastotenesAux n [] = []
    erastotenesAux n (x:xs) = if (x `mod` n /= 0) then (x:(erastotenesAux n xs))
    else erastotenesAux n xs
    -}

    elimina :: Int -> [Int] -> [Int]
    elimina n l = [ x | x <- l, x `mod`n /= 0]

    eliminaR :: Int -> [Int] -> [Int]
    eliminaR n [] = []
    eliminaR n (x:xs) = if x `mod` n /= 0 then x:eliminaR n xs else eliminaR n xs
    
    eliminaP :: Int -> [Int] -> [Int]
    eliminaP n l = foldr (\x acum->if x `mod` n /= 0 then x:acum else acum) [] l

    criba :: [Int] -> [Int]
    criba [] = []
    criba (x:xs) = x : criba (eliminaP x xs)

    erastotenes :: Int -> [Int]
    erastotenes n = criba [2..n]

    {-
    Ejercicio 4
    data Arbol a = AVacio | Rama (Arbol a) a (Arbol a)
    Prueba:
    recorridoPreOrden (Rama (Rama AVacio 12 (Rama AVacio 4 AVacio)) 3 (Rama AVacio 5 (Rama AVacio 6 AVacio)))
        => [3,12,4,5,6]
    -}
    data Arbol a = AVacio | Rama (Arbol a) a (Arbol a)

    recorridoPreOrden :: Arbol a -> [a]
    recorridoPreOrden AVacio = []
    recorridoPreOrden (Rama hi r hd) = [r] ++ recorridoPreOrden hi ++ recorridoPreOrden hd
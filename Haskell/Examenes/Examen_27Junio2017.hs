module Examen_27Junio2017 where
{-
Ejercicio 2
separa [1,5,0,1,-2,8,9,5,-1,4,4,1,7,2,-1,5,10,-3,4,-3,6]
    => [[0,-2,8,9,7,2,10,6],[1,5,-1,4,-3]]
-}

separa :: [Integer] -> [[Integer]]
separa l = foldr (\e [u,r] -> 
    if elem e r then [u,r] 
    else 
        if elem e u then [borrar e u,e:r] 
        else [e:u,r]) [[],[]] l

borrar :: Integer -> [Integer] -> [Integer]
borrar _ [] = []
borrar x (n:ns) = if x == n then borrar x ns else n:borrar x ns

cuantasPitagoricas :: [(Integer,Integer,Integer)] -> Integer
cuantasPitagoricas [] = 0
cuantasPitagoricas ((x,y,z):xs) = if ((x^2) + (y^2)) == (z^2) then 1 + cuantasPitagoricas xs else cuantasPitagoricas xs
{-
Ejercicio 3
Compañia Software
-}
module Examen_2Julio2014 where
import Data.Char
    {-
Ejercicio 2
-}

{-
Ejercicio 3
Grafos
-}
{-A-}
data Grafo a = G [(a,[a])] deriving Show

{-B-}

g1 :: Grafo String
g1 = G[("Valladolid",["Madrid"]),("Madrid",["Valladolid","Barcelona","Albacete"]),("Barcelona",["Madrid","Valencia"]),("Valencia",["Barcelona","Albacete"]),("Albacete",["Madrid","Valencia"])]

{-C
iguales :: Grafo a -> Grafo a -> Bool
iguales (G []) (G ((n2,[l2]):g2s)) = False
iguales (G ((n1,[l1]):g1s)) (G l)  = iguales (G g1s) && igualesAux (n1,[l1]) (G l)

igualesAux :: (a,[a]) -> Grafo a -> Bool
igualesAux _ (G []) = False
igualesAux 

pertenece :: Eq a => (a,[a]) -> [(a,[a])] -> Bool
pertenece (n1,[l1]) (G l) = foldr (\(n2,[l2]) acum -> igualTupla (n1,[l1]) (n2,[l2])  || acum) False l

igualTupla :: Eq a => (a,[a]) -> (a,[a]) -> Bool
igualTupla (x,[x1]) (y,[y1]) = (x == y) && ([x1] == [y1])
-}

{-
Ejercicio inventado

adyacentes :: Grafo a -> a -> [a]
adyacentes (G []) _ = []
adyacentes (G ((x,[y]):ss)) e
    | (x == e) = x:adyacentes (G ss) e
    | otherwise = adyacentes (G ss) e
-}

sacaEnteros :: [Int] -> [Int]
sacaEnteros (0:xs) = []
sacaEnteros (x:xs) = x : sacaEnteros xs

parteLista :: [Int] -> [[Int]]
parteLista x = parteListaAux x [] []

parteListaAux :: [Int] -> [Int] -> [[Int]] -> [[Int]]
parteListaAux [] acum1 acum2 = [acum1] ++ acum2
parteListaAux (0:xs) acum1 acum2 = [acum1] ++ (parteListaAux xs [] acum2) 
parteListaAux (x:xs) acum1 acum2 = (parteListaAux xs (acum1++[x]) acum2)

segmentos :: [Int] -> [[Int]]
segmentos l = segmentosAux l [] []

segmentosAux :: [Int] -> [Int] -> [[Int]] -> [[Int]]
segmentosAux [] acum1 acum2 = ([acum1] ++ acum2)
segmentosAux (x:xs) acum1 acum2 = segmentosAux xs (acum1++[x]) (acum2++[(acum1++[x])])

segments :: [Int] -> [[Int]]
segments [] = [[]]
segments (x:xs) = [] : [x:ys | ys <- segments xs]
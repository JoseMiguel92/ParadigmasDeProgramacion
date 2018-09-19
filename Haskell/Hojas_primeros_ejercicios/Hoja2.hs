module Hoja2 where

{-
A
Implementa una función en Haskell que elimine de 
una lista de enteros aquellos números múltiplo de x.
-}
{- Con definición de listas por comprensión -}
ejA :: [Int] -> Int -> [Int]
ejA l x = [y|y <- l, y `mod` x /= 0]

{- Con recursividad no final -}
ejA' :: [Int] -> Int -> [Int]
ejA' [] _ = []
ejA' (n:ns) x = if n `mod` x == 0 then ejA' ns x else n:ejA' ns x

{- Con recursividad final o de cola -}
ejA'' :: [Int] -> Int -> [Int]
ejA'' n x = ejA''Aux n x []

ejA''Aux :: [Int] -> Int -> [Int] -> [Int]
ejA''Aux [] _ acum = acum
ejA''Aux (n:ns) x acum = if n `mod` x == 0 then ejA''Aux ns x acum else ejA''Aux ns x (acum++[n])

{-
B
Dada la siguiente definición de función
doble :: Int -> Int
doble x = x + x
¿Cómo cambiaría la definición utilizando 
expresiones lambda?
-}
doble :: Int -> Int
doble = \ x->x*2

{-
C
Se pide una función en Haskell que dada una lista 
de números enteros obtenga un número entero con el 
resultado de calcular el doble de cada uno de los 
elementos de la lista original y sumarlos todos. 
Se piden diferentes versiones de la misma función:
-}
{- Con recursividad no final -}
ejC :: [Int] -> Int
ejC [] = 0
ejC (n:ns) = n*2 + ejC ns
{- Con recursividad final o de cola -}
ejC' :: [Int] -> Int
ejC' l = ejC'Aux l 0

ejC'Aux :: [Int] -> Int -> Int
ejC'Aux [] acum = acum
ejC'Aux (n:ns) acum = acum + n*2 + ejC'Aux ns acum

{- Utilizando expresiones lambda u orden superior 
(se puede hacer uso de la función predefinida de 
Haskell map) -}
ejC'' :: [Int] -> Int
ejC'' l= sum(map (2*)l)

{-
D
Implementa una función que sume los cuadrados de 
los números pares contenidos en una lista de 
números enteros. Se piden dos versiones:
-}
{-
Una versión que haga uso de las funciones de orden 
superior de listas map y filter para definir la 
nueva función.
-}

{-
Una versión que utilice la definición de listas 
por comprensión
-}
ejD' :: [Int] -> Int
ejD' (l:ls) = sum map  [x|x<-ls,even x]

{-
E
-}
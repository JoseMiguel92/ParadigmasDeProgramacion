module Examen_28Octubre2016 where
import Data.Char
{-
Ejercicio 2 A
Integer: sustituir [1,5,2,7,1,4,9,-2,-6,1,4,8,11] 1 0
    => [0,5,2,7,0,4,9,-2,-6,1,4,8,11]
Poli: sustituirPoli [1.2,5.3,2.6,7.1,1.3,4.5,9.8,-2.3,-6.4,1.2,4.3,8.1,11.2] 1.0 0.0
-}

--sustituir :: [Integer] -> Integer -> Integer -> [Integer]
--sustituir l x y = fst (sustituirAux l x y ([],1))
--sustituirAux :: [Integer] -> Integer -> Integer -> ([Integer],Integer) -> ([Integer],Integer)
--sustituirAux l x y acc = foldr (\e (acum,pos) -> if (e == x) && (pos `mod`2 /= 0) then (y:acum,pos+1) else (e:acum,pos+1)) acc l

sustituir' ::  [Integer] -> Integer -> Integer -> [Integer]
sustituir' l x y = fst (foldr (\e (acum,pos) -> if (e == x) && (pos `mod`2 /= 0) then (y:acum,pos-1) else (e:acum,pos-1)) ([],length l) l)

{-
sustituir' :: [Integer] -> Integer -> Integer -> [Integer]
sustituir' l x y = foldr (\e acum -> if (e == x) && ((pos e)`mod`2/=0) then [y]++acum else [e]++acum) [] l
-}
{-
sustituirPoli :: Eq a => [a] -> a -> a -> [a]
sustituirPoli l x y = sustituirPoliAux l x y 1

sustituirPoliAux :: Eq a => [a] -> a -> a -> Integer -> [a]
sustituirPoliAux l x y pos = foldr (\e acum -> if (e == x) && (pos `mod`2 /= 0) then [y]++acum else [e]++acum) [] l
-}
sustituirRecur :: [Integer] -> Integer -> Integer -> [Integer]
sustituirRecur l x y = sustituirRecurAux l x y 1 []

sustituirRecurAux :: [Integer] -> Integer -> Integer -> Integer -> [Integer] ->[Integer]
sustituirRecurAux [] x y pos acum = acum
sustituirRecurAux (l:ls) x y pos acum = if (pos`mod`2/=0) && (l==x) then sustituirRecurAux ls x y (pos+1) [y]++acum else sustituirRecurAux ls x y (pos+1) [l]++acum

{-
Ejercicio 2 B
cambio ["Madrid","Barcelona","Patxi","Alfonso"]
-}
cambio :: [String] -> [String]
cambio s = foldl (\acum p-> acum++[(map cambioLetra p)] ) [] s

{-Lista por comprension-}
cambio' :: [String] -> [String]
cambio' s = [(map cambioLetra p)|p<-s]

cambioLetra :: Char -> Char
cambioLetra c = if isLower c then toUpper c else toLower c

{-
Ejercicio 3
Libreria repositorios
-}
data Libreria = Lib String (Int,Int)

instance Show Libreria where
    show (Lib nombre (major,minor)) = nombre ++ " " ++ show major ++ "." ++ show minor

instance Eq Libreria where
    (Lib n1 (mj1,mn1)) == (Lib n2 (mj2,mn2)) = (n1 == n2) && (mj1 == mj2) && (mn1 == mn2)

instance Ord Libreria where
    (Lib n1 (mj1, mn1)) <= (Lib n2 (mj2, mn2))
        | n1 == n2 && (mj1 == mj2) = mn1 <= mn2
        | n1 == n2 = mj1 <= mj2
        | otherwise = n1 < n2

class Compatible a where
    sonCompatibles :: a -> a -> Bool

instance Compatible Libreria where
    sonCompatibles (Lib n1 (mj1, mn1)) (Lib n2 (mj2, mn2)) = (n1 == n2) && (mj1 == mj2)
    
dameCompatibles :: [Libreria] -> Libreria -> [Libreria]
dameCompatibles lista lib = foldr (\lib1 acum -> if (sonCompatibles lib lib1) then lib1:acum else acum)  [] lista
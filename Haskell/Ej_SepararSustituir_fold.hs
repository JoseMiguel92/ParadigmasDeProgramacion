module Separar where
import Data.Char
--separar "Alfonso"=("Aoo","lfns")
separar::[Char]->([Char],[Char])
separar l = foldl (\ (v,c) letra-> if esVocal letra then (v++[letra],c) else (v,c++[letra])) ([],[]) l

esVocal::Char->Bool
esVocal 'a' = True
esVocal 'e' = True
esVocal 'i' = True
esVocal 'o' = True
esVocal 'u' = True
esVocal 'A' = True
esVocal 'E' = True
esVocal 'I' = True
esVocal 'O' = True
esVocal 'U' = True
esVocal _ = False



--sustituir [7,4,7,0,5,6,4,1,9] 4 13
--Sustituirá el 4 por el 13 siempre que el 4 este en una posicion par.
sustituir::(Eq a)=>[a]->a->a->[a]
sustituir l x y = foldl (\acum n-> if (n==x) && (even (length acum+1)) then acum++[y] else acum++[n]) [] l

--Funcion que, mediante el foldr, separe los numeros pares y por otro los impares.
parImpar::[Int]->([Int],[Int])
parImpar l = foldr (\ n (p,i) -> if even n then (n:p,i) else (p,n:i))([],[])l
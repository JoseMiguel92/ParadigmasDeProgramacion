module TiposDeDatos where
data Racional = R Int Int deriving Show

equivalentes::Racional->[Racional]->[Racional]
equivalentes _ [] = []
equivalentes x (y:ys) = if eq x y
                        then y:equivalentes x ys
                        else equivalentes x ys

eq::Racional->Racional->Bool
eq (R n1 d1) (R n2 d2) = n1*d2==n2*d1
{-
x l foldl(\ acum x -> if Numerador x * Denominador y == Denominador x * Numerador y 
    then acum++[x]
    else acum[]l
    )
-}

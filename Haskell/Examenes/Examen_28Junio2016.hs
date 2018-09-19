module Examen_28Junio2016 where
    {-
    Ejercicio 2
    Se pide definir una funcion en Haskell ej2 que reciba un String y te
    devuelva una dupla formada por la palabra sin vocales y por la palabra sin
    consonantes. Es obligatorio utilizar la funcion fold(cualquiera) y funciones
    anónimas(lambda) para implementarla
    -}
    ej2 :: String -> (String,String)
    --ej2 all@(c:cs) = foldr (\ x (v,c) -> if esVocal x then ([x]++v,c) else (v,[x]++c)) ([],[]) all
    ej2 all@(c:cs) = foldl (\ (v,c) x -> if esVocal x then (v++[x],c) else (v,c++[x])) ([],[]) all

    esVocal :: Char -> Bool
    esVocal x = (x == 'a') || (x == 'e') || (x == 'i') || (x == 'o') || (x == 'u') || (x == 'A') || (x == 'E') || (x == 'I') || (x == 'O') || (x == 'U')
    
    {-
    Ejercicio 4
    foldl'
    -}
    fold':: (b->a->b)->b->[a]->[[b]]
    fold' f n x = fold'' f n x (subsecs x)

    fold'':: (b->a->b)->b->[a]->[[a]]->[[b]]
    fold'' f _ [] _ = []
    fold'' f n (x:xs) (y:ys) = [fold'Aux f n y]:(fold'' f n xs ys)

    fold'Aux:: (b->a->b)->b->[a]->b
    fold'Aux f n x = foldl (f) n x

    subsecs:: [a]->[[a]]
    subsecs x = subsecsAux x []

    subsecsAux:: [a]->[a]->[[a]]
    subsecsAux [] _ = []
    subsecsAux (x:xs) acum = y:(subsecsAux xs y)
                        where
                    y = acum++[x]
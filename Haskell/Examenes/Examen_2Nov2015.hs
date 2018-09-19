module Examen2015 where
     {- Ejercicio 2
    -}
    filter' :: [e] -> ( e -> Bool ) -> [e]
    filter' l func = foldl (\acum x -> if func x then acum ++ [x] else acum) [] l
    
    mmap:: [(b->b)]->[b]->[b]
    mmap funcs list = mmapAux funcs list []

    mmapAux:: [(b->b)]->[b]->[b]->[b]
    mmapAux [] list acum = list
    mmapAux (f:fs) [] acum = mmapAux fs acum []
    mmapAux (x:xs) (y:ys) acum = mmapAux (x:xs) ys (acum++[x y])

    {- Ejercicio 3
    Implementar una funcion que dada una lista de elementos de cualquier tipo,
    sea capaz de crear sublistas con todos los elementos repetidos
    iguales' [1,2,3,1,5,3,2,6,5,7,8,7]
    -}
    iguales' :: Eq e => [e] -> [e]
    iguales' l = igualesAux l []

    igualesAux :: Eq e => [e] -> [e] -> [e]
    igualesAux [] vistos = vistos
    igualesAux (y:ys) vistos = if esta vistos y then igualesAux ys vistos else igualesAux ys vistos++[y]
    
    esta :: Eq e => [e] -> e -> Bool
    esta [] _ = False
    esta (y:ys) e = if y == e then True else esta ys e

    {- Ejercicio 4
    Libreria generica 
    -}
    data Tipo = Musica | Libros deriving Show
    data Producto = Prod Tipo Float

    class Libreria a where
        damePB :: a -> Float
        dameIVA :: a -> Float
        dameTasa :: a -> Float
    
    instance Eq Tipo where
        t1 == t2 = (show t1) == (show t2)
    
    instance Eq Producto where
        (Prod t1 x1) == (Prod t2 x2) = (x1 == x2) && (t1 == t2)

    instance Libreria Producto where 
        damePB (Prod _ x) = x
        dameIVA (Prod Musica x) = 0.21
        dameIVA (Prod Libros x) = 0.15
        dameTasa (Prod a x) = x * dameIVA (Prod a x)

    pvp :: Producto -> Float
    pvp (Prod a x) = x + dameTasa (Prod a x)
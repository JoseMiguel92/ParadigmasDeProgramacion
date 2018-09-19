module Examen_31Octubre2014 where
    {-
    Ejericio 2
    Funcion que dado un elemento y una lista devuelva si ese elemento esta en la
    lista.
    -}
    pertenece :: Eq e => e -> [e] -> Bool
    pertenece x l = foldr (\y s -> if x /= y then False || s else True || s) False l
    
    {-
    Usando el otro fold, funcion que elimine un elemento de la lista
    -}
    eliminar :: Eq e => e -> [e] -> [e]
    eliminar x l = foldl (\acum y -> if x == y then acum else acum++[y]) [] l

    {-
    Ejercicio 3
    Restaurante
    ocuparMesa (O([(M 1 10),(M 2 9)],[(M 6 10)])) 9
        => Libres: [[Mesa 1 -> Capacidad: 10]] Ocupadas: [[Mesa 2 -> Capacidad: 9],[Mesa 6 -> Capacidad: 10]]
    -}
    data Mesa = M Integer Integer
    data Ocupacion = O ([Mesa],[Mesa])

    instance Show Ocupacion where
        show (O(libres,ocupadas)) = "Libres: " ++ show libres ++ " Ocupadas: " ++ show ocupadas
        
    instance Show Mesa where
        show (M id capacidad) = "[Mesa " ++ show id ++ " -> Capacidad: " ++ show capacidad ++ "]"
    
    instance Eq Mesa where
        (M _ c1) == (M _ c2) = c1 == c2

    instance Ord Mesa where
        (M _ c1) <= (M _ c2) = c1 <= c2

    insertarMesaLibre :: Ocupacion -> Mesa -> Ocupacion
    insertarMesaLibre (O(libres,ocupadas)) mesa = O (insertaOrdenada libres mesa,ocupadas)
    
    insertaOrdenada :: [Mesa] -> Mesa -> [Mesa]
    insertaOrdenada [] m = [m]
    insertaOrdenada (x:xs) m = if m <= x then m:(x:xs) else x:insertaOrdenada xs m
    
    ocuparMesa :: Ocupacion -> Integer -> Ocupacion
    ocuparMesa (O(libres,ocupadas)) n = (O(eliminarMesa libres (dameMesaLibre libres n),insertaOrdenada ocupadas (dameMesaLibre libres n)))

    dameMesaLibre :: [Mesa] -> Integer -> Mesa
    dameMesaLibre ((M i t):xs) n = if t >= n then (M i t) else dameMesaLibre xs n
    
    eliminarMesa :: [Mesa] -> Mesa -> [Mesa]
    eliminarMesa [] m = []
    eliminarMesa (x:xs) m = if m == x then xs else x:eliminarMesa xs m


    ocuparMesaAux :: Ocupacion -> Integer -> [Mesa] -> Ocupacion 
    ocuparMesaAux (O (m@(Mesa ident asientos):mesas) ocupadas) comensales mesasPequeñas
        | asientos >= comensales = (O (mesasPequeñas ++ mesas) (m:ocupadas))
        | otherwise = ocuparMesaAux (O mesas ocupadas) comensales (mesasPequeñas ++ [m])
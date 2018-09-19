module Hoja2 where
    {-
    Implementa una función en Haskell que elimine de una lista de enteros
    aquellos números múltiplo de x.
    - Con definición de listas por comprensión
    - Con recursividad no final
    - Con recursividad final o de cola  
    -}
    ejercicioA :: [Integer] -> Integer -> [Integer]
    ejercicioA l x = [e | e <- l, e `mod`x /= 0]

    ejercicioA' :: [Integer] -> Integer -> [Integer]
    ejercicioA' [] _ = []
    ejercicioA' (l:ls) x = if l `mod` x /= 0 then l:ejercicioA' ls x else ejercicioA' ls x
    
    ejercicioA'' :: [Integer] -> Integer -> [Integer]
    ejercicioA'' (l:ls) x = reverse (ejercicioA2Aux (l:ls) x [])

    ejercicioA2Aux :: [Integer] -> Integer -> [Integer] -> [Integer]
    ejercicioA2Aux [] _ acum = acum
    ejercicioA2Aux (l:ls) x acum = if l `mod` x /= 0 then ejercicioA2Aux ls x (l:acum) else ejercicioA2Aux ls x acum

    {-Dada la siguiente definición de función
    doble :: Int -> Int 
    doble x = x + x
    ¿Cómo cambiaría la definición utilizando expresiones lambda?
    -}
    ejercicioB :: Int -> Int
    ejercicioB x = (\n->n*2) x

    {-
    Se pide una función en Haskell que dada una lista de números enteros
    obtenga  un número entero con el resultado de calcular el doble de cada uno
    de los elementos de la lista original y sumarlos todos. Se piden diferentes
    versiones de la misma función:
    - Con recursividad no final
    - Con recursividad final o de cola
    - Utilizando expresiones lambda u orden superior (se puede hacer uso de la
    función predefinida de Haskell map).
    [2,3,4]
    -}
    ejercicioC :: [Integer] -> Integer
    ejercicioC [] = 0
    ejercicioC (n:ns) = (2*n) + ejercicioC ns

    ejercicioC' :: [Integer] -> Integer
    ejercicioC' l = ejercicioC'Aux l 0
    
    ejercicioC'Aux :: [Integer] -> Integer -> Integer
    ejercicioC'Aux [] acum = acum
    ejercicioC'Aux (n:ns) acum = ejercicioC'Aux ns (2*n + acum)

    ejercicioC'' :: [Integer] -> Integer
    ejercicioC'' l = foldr (+) 0 (map (*2) l)

    {-
    Implementa una función que sume los cuadrados de los números pares
    contenidos  en una lista de números enteros. Se piden dos versiones:
    a. Una versión que haga uso de las funciones de orden superior de listas
    map y filter para definir la nueva función.
    b. Una versión que utilice la definición de listas por comprensión.
    -}
    ejercicioD :: [Integer] -> Integer
    ejercicioD all@(n:ns) = foldr ((+) . (^ 2)) 0 (filter even all)

    ejercicioD' :: [Integer] -> Integer
    ejercicioD' l = foldr (+) 0 [x^2 | x <- l, x`mod`2==0]

    {-
    Dada una lista de enteros, implementar una función para devolver tuplas
    formadas por los elementos (sin repetir) de la lista, junto con la primera
    posición en la que aparecen.
    [1,5,6,0,2,6,4,78,9,41,-9,8,-9,12,45,0]
    -}
    ejercicioE :: [Integer] -> [(Integer,Integer)]
    ejercicioE l = reverse (ejercicioEAux l 1 [] [])

    ejercicioEAux :: [Integer] -> Integer -> [Integer] -> [(Integer,Integer)] -> [(Integer,Integer)]
    ejercicioEAux [] pos vistos resultado  = resultado
    ejercicioEAux (n:ns) pos vistos resultado = 
        if esta vistos n then ejercicioEAux ns (pos+1) vistos resultado
        else ejercicioEAux ns (pos+1) (n:vistos) ((n,pos):resultado)

    esta :: [Integer] -> Integer -> Bool
    esta [] _ = False
    esta (n:ns) x = if (n == x) then True else esta ns x

    {-
    F
    Implementar en Haskell una función que calcule el número de secuencias de
    ceros que hay en una lista de números.
    -}

    {-
    G
    Implementar una función en Haskell que reciba una lista de números enteros
    y devuelva dos listas: una con los elementos sin repetir y otra con los
    elementos que están repetidos.
    -}
    ejercicioG :: [Integer] -> ([Integer],[Integer])
    ejercicioG l = ejercicioGAux l ([],[])
    
--    ejercicioGAux :: [Integer] -> ([Integer],[Integer]) -> ([Integer],[Integer])
--    ejercicioGAux [] _ = ([],[])
--    ejercicioGAux all@(n:ns) (nrep,reps) = if esta nrep n then ejercicioGAux
--    all (nrep,(n:reps)) else ejercicioGAux all ((n:nrep),reps)

    {-
    Dada una lista de números enteros implementar una función que devuelva una
    lista con los n elementos mayores de la lista original.
    -}
    ejercicioH :: [Integer] -> Integer -> [Integer]
    ejercicioH [] _ = []
    ejercicioH _ 0 = []
    --ejercicioH all@(n:ns) e = 
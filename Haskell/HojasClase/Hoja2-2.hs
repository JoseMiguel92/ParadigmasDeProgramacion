module Hoja22 where
    {-
    Ejercicio A
    Se pide una función en Haskell que dada una lista de dígitos devuelva una
    lista con todos los dígitos hasta el primer cero.
    -}
    sacaEnteros :: [Integer] -> [Integer]
    sacaEnteros [] = []
    sacaEnteros (0:ns) = []
    sacaEnteros (n:ns) = n:sacaEnteros ns

    {-
    Ejercicio B
    Se pide implementar en Haskell una función que dada una lista de enteros,
    devuelva las sublistas entre cada par de ceros, respetando el orden de los
    enteros en la lista original.
    -}
    parteLista :: [Integer] -> [[Integer]]
    parteLista [] = []
    parteLista ns = [sacaEnteros ns] ++ parteLista (eliminaHastaCero ns)

    eliminaHastaCero :: [Integer] -> [Integer]
    eliminaHastaCero [] = []
    eliminaHastaCero (0:ls) = ls
    eliminaHastaCero (l:ls) = eliminaHastaCero ls

    {-
    Ejercicio C
    Implementar una función en Haskell que reciba una lista y devuelva las
    listas productos de la secuencia de inserciones de los elementos en cada
    lista anterior (empezando por la lista vacía).
    -}
    {-
    segmentos :: [Int] -> [[Int]]
    segmentos l = segmentosAux l 0
    
    segmentosAux :: [Int] -> Int -> [[Int]]
    segmentosAux [] _ = [[]]
    segmentosAux l contador = if (contador <= length l) then 
        [take contador l] ++ segmentosAux l (contador+1)
        else 
            []
    -}
    segments :: [Int] -> [[Int]]
    segments [] = [[]]
    segments (x:xs) = [] : [x:ys | ys <- segments xs]
    
    {-
    Ejercicio D
    Se pide una función en Haskell que dada una lista de números enteros
    obtenga  la lista resultado de calcular el doble de cada uno de los
    elementos de la lista. Se piden diferentes versiones de la misma función:
    1) Con recursividad no final.
    2) Con recursividad final.
    3) Utilizando expresiones lambda u orden superior (se puede hacer uso de la
       función predefinida de Haskell map o de las funciones foldr o foldl).
    -}

    {-Ejercicio E
    Dada una lista de enteros, implementa una función que ordene dicha lista de
    menor a mayor utilizando un algoritmo de inserción. Dicho algoritmo recorre
    la lista L insertando cada elemento L[i] en el lugar correcto entre los
    elementos ya ordenados L[1] ,...,L[i-1].
    -}
module Examen_26Junio2018 where
    {-
    Ejercicio2 A
    -}

    contarApariciones :: Eq e => [e] -> [(e,Int)]
    contarApariciones l = contarAparicionesAux l [] []

    contarAparicionesAux :: Eq e => [e] -> [e] -> [(e,Int)] -> [(e,Int)]
    contarAparicionesAux [] vistos acum = acum
    contarAparicionesAux (x:xs) vistos acum = if (esta x vistos) then contarAparicionesAux xs vistos (actualizaTupla x acum) else contarAparicionesAux xs (x:vistos) ((x,1):acum)

    esta :: Eq e => e -> [e] -> Bool
    esta _ [] = False
    esta x (y:ys) = if (x == y) then True else esta x ys

    actualizaTupla :: Eq e => e -> [(e,Int)] -> [(e,Int)] 
    actualizaTupla a l = foldr (\(x,y) acum -> if a == x then (x,y+1):acum else (x,y):acum) [] l
    
    {-
    Ejercicio 2 B
    
    moda :: Eq e => [e]
    moda l = modaAux (contarApariciones l)

    modaAux :: Eq e => [(e,Int)] -> [e]
    modaAux 
-}
    {-
    Ejercicio 3
    -}
    numerosAbundantes :: Int -> [Int]
    numerosAbundantes n = take n (filter esAbundante [1..])

    esAbundante :: Int -> Bool
    esAbundante n = n < sumaDivisores (dameDivisores n)

    dameDivisores :: Int -> [Int]
    --dameDivisores n = foldr (\x acum -> if n `mod` x == 0 then x:acum else acum) [] [1..(n-1)]
    dameDivisores n = [x | x <- [1..(n-1)],n `mod` x == 0]

    sumaDivisores :: [Int] -> Int
    sumaDivisores l = foldr (+) 0 l
    
    {-
    Ejercicio 4
    Arbol binario par
    -}
    data Arbol a = AV | Rama (Arbol a) a (Arbol a) deriving Show

    esPar :: Integral a => Arbol a -> Bool
    esPar (AV) = False
    esPar (Rama hi x hd) = mayoriaPares (dameNodos (Rama hi x hd))

    dameNodos :: Integral a => Arbol a -> [a]
    dameNodos (AV) = []
    dameNodos (Rama hi x hd) = dameNodos hi ++ [x] ++ dameNodos hd

    mayoriaPares :: Integral a => [a] -> Bool
    mayoriaPares l = if (length (filter even l)) >= (((length l) `div` 2) + 1) then True else False
  
    {-
    Ejercicio 5
    Aeropuerto
    show (A "Barajas" 6 200 2 ["Iberia","AirEuropa"])
    show (A "Barcelona" 6 200 2 ["Iberia","RyanAir"])
    [(A "Barcelona" 6 200 10 ["Iberia","RyanAir"]),(A "Qatar" 7 100 9 ["LineaA","LineaB"]),(A "Alemania" 6 200 8 ["LineaC","LineD"])]
    -}
    type Nombre = String
    type Pistas = Integer
    type Trafico = Int
    type Accidentes = Int
    type Compania = String

    data Aeropuerto = A Nombre Pistas Trafico Accidentes [Compania]

    instance Eq Aeropuerto where
        (A n1 p1 t1 a1 l1) == (A n2 p2 t2 a2 l2) = (p1 == p2) && (t1 == t2) && ((length l1) == (length l2))
    instance Show Aeropuerto where
        show (A n1 p1 t1 a1 l1) = "Aeropuerto: " ++ n1 ++ "; Pistas: " ++ show p1 ++ "; Vuelos: " ++ show t1 ++ "; Companias: " ++ show (length l1) ++ "; Accidentes: " ++ show a1 
        
    dameLista :: Aeropuerto -> [Aeropuerto] -> [Aeropuerto]
    dameLista a [] = []
    dameLista a (l:ls) = if (a==l) && ((dameAccidentes a) < (dameAccidentes l)) then l:dameLista a ls else dameLista a ls
    
    dameAccidentes :: Aeropuerto -> Int
    dameAccidentes  (A n1 p1 t1 a1 l1) = a1
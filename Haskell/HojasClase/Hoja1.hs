module Hoja1 where
    import Data.Char
    {-
    Implementar una función en Haskell que dados tres números enteros
    determine si están ordenados de menor a mayor.
    -}
    ejercicioA :: Integer -> Integer -> Integer -> Bool
    ejercicioA x y z = (x < y) && (y < z)

    {-
    Implementar una función en Haskell que dados tres números enteros los
    devuelva ordenados de menor a mayor.
    -}
    ejercicioB :: Integer -> Integer -> Integer -> (Integer,Integer,Integer)
    ejercicioB x y z 
        | x>y && y>z = (x,y,z)
        | otherwise = (1,1,1)
    
    {-Implementar en Haskell una función que reciba un número real y devuelva
    una tupla con su parte entera y sus dos primeros decimales (como número
    entero).
    -}
    ejercicioC :: Double -> (Integer,Integer)
    ejercicioC n = (truncate(n), truncate( (n - fromInteger(truncate(n))) *100 ))
    
    {-
    Crear una función que reciba el radio de una circunferencia y devuelva una
    2-tupla con la longitud de la circunferencia y con el área del círculo.
    Emplea una definición local con la cláusula where para almacenar el valor
    de Pi (Nota: no se debe utilizar la función predefinida pi). A
    continuación crear una función con el mismo cometido empleando la
    definición local let.
    -}
    ejercicioD :: Double -> (Double,Double)
    ejercicioD x = ((x*pi),(x*x*pi)) where pi = 3.14

    ejercicioD' :: Double -> (Double,Double)
    ejercicioD' x = let pi = 3.14 in ((x*pi),(x*x*pi))

    {-
    Implementar la función predefinida de listas concat, que se llamará
    concatenar,  utilizando la definición de listas por comprensión (no se
    puede utilizar recursividad).
    -}
    --concatenar :: [Int] -> [Int] -> [Int]
    --concatenar l1 l2 = [(x,y) | x<-l2 , y<-l1]
    concatenar :: [[Int]] -> [Int]
    concatenar total = [ elemento | lista <- total, elemento <- lista ]
    
    {-
    Implementar una función que dado un número entero devuelva en una lista
    todos  los factores de dicho número. Se debe utilizar la definición de
    listas por comprensión.
    -}
    ejercicioF :: Integer -> [Integer]
    ejercicioF x = [y | y <- [1..x], x `mod` y == 0 ]

    {-
    Implementar una función que diga si un número es primo. Para ello se debe
    utilizar la función que calcula el número de factores de un número
    (ejercicio f).
    -}
    ejercicioG :: Integer -> Bool
    ejercicioG x = length(ejercicioF x) < 3

    {-
    Implementar una función que diga cuántos caracteres en mayúscula están
    contenidos  en una frase dada. Se deberá utilizar la definición de listas
    por comprensión.
    -}
    ejercicioH :: String -> Int
    ejercicioH s = length [c | c <- s, isUpper c]

    {-
    Implementar una función que dada una tupla de tres elementos, donde cada
    uno de ellos es a su vez una tupla de dos elementos de tipo String e Int
    respectivamente, retorne el primer elemento de cada tupla interna. Se
    deberá utilizar ajuste de patrones.
    -}
    ejercicioI :: ((String,Int),(String,Int),(String,Int)) -> (String,String,String)
    ejercicioI ((x,_),(y,_),(z,_)) = (x,y,z)

    {-
    Implementar una función que devuelve True si la suma de los cuatro primeros
    elementos de una lista de números enteros  es un valor menor a 10 y
    devolverá False en caso contrario. Se deberá utilizar ajuste de patrones.
    -}
    ejercicioJ :: [Integer] -> Bool
    ejercicioJ (x:y:z:t:ts) = if (x+y+z+t < 10) then True else False
    ejercicioJ _ = False

    {-
    Implementar una función que dado un carácter, que representa un punto
    cardinal, devuelva su descripción. Por ejemplo, dado ‘N’ devuelva “Norte”.
    -}
    ejercicioK :: Char -> String
    ejercicioK 'N' = "Norte"
    ejercicioK 'S' = "Sur"
    ejercicioK 'E' = "Este"
    ejercicioK 'O' = "Oeste"
    ejercicioK _ = "Mal."

    {-
    Implementar una función que dada una frase retorne un mensaje donde se
    indique cuál es la primera y última letra de la frase original. 
    -}
    ejercicioL :: String -> String
    ejercicioL "" = "Cadena vacia."
    ejercicioL all@(x:xs) = "La primera letra de la frase " ++ all ++ " es '" ++ [x] ++ "' y la ultima letra es '"++ [last all] ++"'."
    
    {-
    Implementar una función que dado un número entero devuelva mensajes
    indicando en qué rango de valores se encuentra dicho número (menor de 10,
    entre 10 y 20 o mayor de 20). Se debe utilizar definiciones locales.
    -}
    ejercicioM :: Integer -> String
    ejercicioM x
        | x < 10 = cad ++ "menor de 10."
        | x >= 10 && x <= 20  = cad ++ "mayor de 10 y menor de 20."
        | x > 20 = cad ++ "mayor de 20."
        where 
            cad = "El valor de entrada es "

    {-
    Implementar una función que dada una cadena de caracteres y un carácter,
    indique el número de apariciones del carácter en la cadena. No se debe
    utilizar recursividad, sí ajuste de patrones. Pista: utilizar la
    definición de listas por comprensión.
    -}
    ejercicioN :: String -> Char -> Int
    ejercicioN "" _ = 0
    ejercicioN s c = length [x | x <- s, x == c]
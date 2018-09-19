module Hoja1 where
import Data.Char
  {-
A
Implementar una función en Haskell que dados tres 
números enteros determine si están ordenados de 
menor a mayor.
-}
ejA :: Int -> Int -> Int -> Bool
ejA x y z = x < y && y < z
{-
B
Implementar una función en Haskell que dados 
tres números enteros los devuelva ordenados de 
menor a mayor.
-}
ejB :: Int -> Int -> Int -> (Int,Int,Int)
ejB x y z
 | x<y && y<z = (x,y,z)
 |otherwise = (1,1,1)

{-
C
Implementar en Haskell una función que reciba 
un número real y devuelva una tupla con su parte entera 
y sus dos primeros decimales (como número entero).
-}
ejC :: Double -> (Int,Int)
ejC x = (truncate(x),truncate((x - fromInteger(truncate(x)))*100))

{-
D
Crear una función que reciba el radio de una circunferencia 
y devuelva una 2-tupla con la longitud de la circunferencia 
con el área del círculo. Emplea una definición local con la
cláusula where para almacenar el valor de Pi (Nota: no se 
debe utilizar la función predefinida pi). A continuación 
crear una función con el mismo cometido empleando la definición local let.
-}
ejD1 :: Double -> (Double,Double)
ejD1 x = (p * x * x,2 * p * x)
 where
    p = 3.141592

ejD2 :: Double -> (Double,Double)
ejD2 x =
 let p = 3.141592
  in (p * x * x,2 * p * x)

{-
E
Implementar la función predefinida de listas concat, 
que se llamará concatenar, utilizando la definición 
de listas por comprensión (no se puede utilizar 
recursividad).
-}
--concatenar :: [Int] -> [Int] -> [Int]
--concatenar x y = [z| z <- y]

{-
F
Implementar una función que dado un número entero devuelva
 en una lista todos los factores de dicho número. Se debe
  utilizar la definición de listas por comprensión.
-}
ejF :: Int -> [Int]
ejF x = [y| y <- [1..x],x `mod` y == 0]

{-
G
Implementar una función que diga si un número es primo. 
Para ello se debe utilizar la función que calcula el 
número de factores de un número (ejercicio f).
-}
ejG :: Int -> Bool
ejG x = length (ejF x) == 2

{-
H
Implementar una función que diga cuántos caracteres en 
mayúscula están contenidos en una frase dada. Se deberá 
utilizar la definición de listas por comprensión.
-}
ejH :: String -> Int
ejH x = length [y| y <- x, isUpper y]
{-
I
Implementar una función que dada una tupla de tres elementos,
 donde cada uno de ellos es a su vez una tupla de dos elementos
  de tipo String e Int respectivamente, retorne el primer 
  elemento de cada tupla interna. Se deberá utilizar ajuste de patrones.
-}
ejI :: ((String,Int),(String,Int),(String,Int)) -> (String,String,String)
ejI ((x1,y1),(x2,y2),(x3,y3)) = (x1,x2,x3)

{-
J
Implementar una función que devuelve True si la suma de 
los cuatro primeros elementos de una lista de números 
enteros es un valor menor a 10 y devolverá False en 
caso contrario. Se deberá utilizar ajuste de patrones.
-}
ejJ :: [Int] -> Bool
ejJ [] = False
ejJ (x:y:z:w:ws) = x+y+z+w <= 10
ejJ (x:y:z:zs) = x + y + z <= 10
ejJ (x:y:ys) = x + y <= 10
ejJ (x:xs) = x <= 10
ejJ _ = False

{-
K
Implementar una función que dado un carácter, que 
representa un punto cardinal, devuelva su descripción. 
Por ejemplo, dado ‘N’ devuelva “Norte”.
-}
ejK :: Char -> String
ejK 'N' = "Norte"
ejK 'S' = "Sur"
ejK 'E' = "Este"
ejK 'O' = "Oeste"
ejK c = "Punto cardinal incorrecto"

{-
L
Implementar una función que dada una frase retorne un 
mensaje donde se indique cuál es la primera y última 
letra de la frase original. Un ejemplo de aplicación 
de la función podría ser:
> procesarFrase "El perro de San Roque"
"La primera letra de la frase ''El perro de San Roque'' 
es 'E' y la ultima letra es 'e'"
-}
ejL :: String -> String
ejL x = "La primera letra es " ++ [head x] ++ " la ultima es " ++ [last x]

{-
M
Implementar una función que dado un número entero 
devuelva mensajes indicando en qué rango de valores
se encuentra dicho número (menor de 10, entre 10 y 
20 o mayor de 20). Se debe utilizar definiciones locales.
-}
ejM :: Integer -> String
ejM x
 | x < 10 = x1 ++ " menor de 10"
 | x >= 10 && x <= 20 = x1 ++ " entre 10 y 20"
 | otherwise = x1 ++ " mayor de 20"
 where
  x1 = "El valor de entrada es"

{-
N
Implementar una función que dada una cadena de 
caracteres y un carácter, indique el número de 
apariciones del carácter en la cadena. No se 
debe utilizar recursividad, sí ajuste de patrones.
 Pista: utilizar la definición de listas por 
 comprensión.
-}
ejN :: String -> Char -> Int
ejN [] c = 0
ejN s c = length [n| n <- s,n == c]
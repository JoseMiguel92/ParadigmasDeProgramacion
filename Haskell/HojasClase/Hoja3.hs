module Hoja3 where
{-Ejercicio A
Se pide una función que dada una lista de racionales, donde cada racional
se  define como dos números enteros (numerador y denominador), y un número
racional, devuelva otra lista con todos los racionales equivalentes al dado.
Realiza dos versiones del ejercicio:
1. Empleando type.
-}
type Numerador = Integer
type Denominador = Integer
type Racional = (Numerador, Denominador)
equivalentes :: [Racional] -> Racional -> [Racional]
equivalentes l (n2,d2) = foldr (\ (n1,d1) acum -> if (n1*d2) == (n2*d1) then [(n1,d1)]++acum else acum) [] l
{-
2. Empleando data.
-}
data Rac = R (Numerador, Denominador) deriving Show
equivalentes' :: [Rac] -> Rac -> [Rac]
equivalentes' l (R(n2,d2)) = foldr (\ (R(n1,d1)) acum -> if (n1*d2) == (n2*d1) then [(R(n1,d1))]++acum else acum) [] l

data PCardinal = Norte | Sur | Este | Oeste
type Punto = (Float,Float)

--data Punto = P(Float,Float) deriving Show
{-
Ejercicio B 1
Función que dado un punto de coordenadas y una dirección (Norte, Sur, Este u
Oeste) mueva el punto hacia la dirección indicada

mover :: String -> Punto -> Punto
mover "Este" (P(x,y)) = P (x + 1, y)
mover "Oeste" (P(x,y)) = P (x - 1, y)
mover "Norte" (P(x,y)) = P (x, y + 1)
mover "Sur" (P(x,y)) = P (x, y - 1)
mover _ (P(x,y)) = P (x, y)
-}
mover :: PCardinal -> Punto -> Punto
mover Este (x,y) = (x + 1, y)
mover Oeste (x,y) = (x - 1, y)
mover Norte (x,y) = (x, y + 1)
mover Sur (x,y) = (x, y - 1)

{-
Ejercicio B 2
Función que dados dos puntos de coordenadas indique cuál está más al sur
-}
masAlSur :: Punto -> Punto -> Punto
masAlSur (x1,y1) (x2,y2) = if y1>y2 then (x2,y2) else (x1,y1)
{-
 Ejercicio B 3
Función que calcule la distancia entre dos puntos
-}
distancia :: Punto -> Punto -> Float
distancia (x1,y1) (x2,y2) = sqrt ( ((x2-x1)^2) + ((y2-y1)^2 ))

{-
 Ejercicio B 4
Función que dado un punto y una lista de direcciones, retorne el camino que
forman todos los puntos después de cada movimiento sucesivo desde el punto
original
camino (3.2,5.5) ["Sur","Este","Este","Norte","Oeste"] 
    => [(3.2,4.5),(4.2,4.5),(5.2,4.5),(5.2,5.5),(4.2,5.5)]
-}
camino :: Punto -> [PCardinal] -> [Punto]
--camino c l = foldr (\p acum-> [mover p c]++acum) [] l
camino _ [] = []
camino p (c:cs) = ((mover c p):camino (mover c p) cs)

{-
Ejercicio C
Definir una función que dado un día de la semana, indique si éste es o no
laborable. Para representar el día de la semana se deberá crear un nuevo tipo
enumerado.
-}
data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deriving Eq
laborable :: Dia -> Bool
laborable x
    | x == Sabado || x == Domingo = False
    | otherwise = True

{-
Ejercicio D
-}
data Temp = Celsius Float | Farenheit Float deriving Show
{-
data Tipo = Celsius | Farenheit deriving Show
data Temp = Tipo Float deriving Show
-}
convert :: Temp -> Temp
convert (Celsius x) = Farenheit (x * (9/5) + 32)
convert (Farenheit x) = Celsius ((x-32) * (5/9))

data AA = On | Off deriving Show

action :: Temp -> AA
action (Celsius x) = if x > 28 then On else Off
action t@(Farenheit x) = action (convert t)
{-
Ejercicio E
Definir un tipo moneda para representar euros y dólares USA. Definir una
función que convierta entre ambas monedas sabiendo que el factor de conversión
de euros a dólares es 1.14.
-}
data Moneda = Euro Float | Dolar Float deriving Show
valor :: Float
valor = 1.14
convertir :: Moneda -> Moneda
convertir (Euro x) = (Dolar (x/valor))
convertir (Dolar x) = (Euro (x*valor))
{-
Ejercicio F 1
Dada el siguiente tipo de datos recursivo que representa expresiones aritméticas:
Se pide una función para calcular el valor de una expresión.
resultado ((Valor 5) :+: (Valor 1))
    => 6
-}
data Expr = Valor Integer 
            |Expr :+: Expr 
            |Expr :-: Expr 
            |Expr :*: Expr deriving Show
resultado :: Expr -> Integer
resultado (Valor i) = i
resultado (e1 :+: e2) = resultado e1 + resultado e2
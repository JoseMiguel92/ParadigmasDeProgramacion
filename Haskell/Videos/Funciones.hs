module Funciones where

doble :: Integer -> Integer
doble x = x + x

cuadruple :: Integer -> Integer
cuadruple (x) = doble(doble(x))

divReal :: (Integer, Integer) -> Double
divReal (x,y) = fromInteger(x) / fromInteger(y)

divEntera :: (Integer,Integer) -> (Integer,Integer)
divEntera (m,n) = (m `div`n, m `rem`n)

parteEnterayDecimal :: Double -> (Integer,Double)
parteEnterayDecimal (x) = (truncate (x), x - fromInteger(truncate(x)))

maximo :: (Integer,Integer) -> Integer
maximo (m,n) = if m > n then m else n

potencia :: (Integer,Integer) -> Integer
potencia (b,e) = if e == 0 then 1
    else b * potencia (b,e-1)

factorial :: Integer -> Integer
factorial (x) = factorial2(x,1)

factorial2 :: (Integer,Integer) -> Integer
factorial2 (n,acum) = if n == 0 then acum
    else factorial2(n-1,n*acum)

apariciones :: (Integer,Integer) -> Integer
apariciones (d,n)=if n == 0 then 0
    else coincide(d,n `mod` 10) + apariciones(d, n `div` 10)

coincide :: (Integer,Integer) -> Integer
coincide (d,n) = if d == n then 1
    else 0
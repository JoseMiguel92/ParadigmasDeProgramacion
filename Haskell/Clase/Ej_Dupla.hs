module Ej_Dupla where
dupla :: (Float, Char) -> Float
dupla (n, c)
 |c == 'c' = cos n
 |c == 's' = sin n
 |(c == 'l' && n > 0) = log n
 |otherwise = -1
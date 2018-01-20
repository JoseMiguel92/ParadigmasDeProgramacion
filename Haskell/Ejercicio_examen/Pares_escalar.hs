module Pares_escalar where
productoEscalar :: [Int] -> [Int] -> Int
productoEscalar l1 m1 = foldl (+) 0 [x*y | (x,y) <- (zip l1 m1)]
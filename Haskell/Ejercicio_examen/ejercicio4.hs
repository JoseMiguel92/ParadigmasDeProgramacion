module Ejercicio4 where
 foldl' :: (Int -> Int) -> Int -> [Int] -> [[Int]]
 fold' f x [] = [foldl f x []]
 fold' f x (l:ls) = [foldl f x [l]]
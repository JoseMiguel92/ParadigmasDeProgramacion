module Ejercicio4 where
 foldl' :: (Int -> Int) -> Int -> [Int] -> [[Int]]
 foldl' f x [] = [foldl f x []]
 foldl' f x (l:ls) = [foldl f x [l]]
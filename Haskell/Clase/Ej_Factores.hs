module Ej_Factores where
factores :: Int -> [Int]
factores n = [x | x <- [1..n], n `mod` x == 0]
primo :: Int -> Bool
primo n = length(factores n) == 2
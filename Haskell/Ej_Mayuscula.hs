module Ej_Mayuscula where
import Data.Char
mayuscula :: String -> Int
mayuscula s = length [c | c <- s , isUpper c]
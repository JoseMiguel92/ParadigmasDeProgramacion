module Arbol where

data Arbol a = AV|Nodo a (Arbol a) (Arbol a) deriving Show

numNodos::Arbol a -> Int
numNodos (AV) = 0
numNodos (Nodo r hi hd) = 1 + numNodos hi + numNodos hd
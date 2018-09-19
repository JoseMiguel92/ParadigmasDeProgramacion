module Arboles where

data Arbol a = AV|Nodo a (Arbol a)(Arbol a) deriving Show
--Altura Arbol
altura::Arbol a -> Int
altura AV = 0
altura (Nodo a izq der)= 1 + maximo (altura (izq),altura(der))

maximo::(Int,Int)->Int
maximo (a,b)= if a>b then a else b

--Anchura

--Inorden
inorden::Arbol a -> [a]
inorden AV = []
inorden (Nodo a izq der) = inorden (izq) ++ [a] ++ inorden (der)

--Preorden
preorden::Arbol a -> [a]
preorden AV = []
preorden (Nodo a izq der) = a:(preorden(izq)++ preorden(der))

--Postorden
postorden::Arbol a -> [a]
postorden AV = []
postorden (Nodo a izq der) = postorden (izq) ++ postorden (der)++[a]

--Son nodos hermanos?
hermanos::Arbol a -> a -> a -> Bool
hermanos AV _ _ = False
hermanos (Nodo r AV hd) n1 n2 = hermanos hd n1 n2
hermanos (Nodo r hi AV) n1 n2 = hermanos h1 n1 n2
hermanos (Nodo r (Nodo ri hii hid) (Nodo rd hdi hdd))
    |(ri == n1) && (rd == n2) = True
    |(ri == n2) && (rd == n1) = True
    |otherwise = (hermanos (Nodo ri hii hid) n1 n2) || (hermanos (Nodo rd hdi hdd) n1 n2)


--Nivel        
nivel::(Eq a)=> Arbol a -> a -> Int
nivel AV n = 0
nivel (Nodo r hi hd) n = if r==n then 1
                            else aux + if aux == 0 then 0 else 1
                                where
                                    aux = max (nivel hi n,nivel hd n)
module Hoja4 where

{-
Ejercicio A
Se quiere ordenar los elementos de una lista (cuyos elementos son comparables)
mediante el algoritmo del quicksort.
-}
qs::Ord a=>[a]->[a]
qs [] = []
qs (p:xs) = qs [x|x<-xs,x<p] ++ [p] ++ qs [x|x<-xs,x>=p]

{-
Ejercicio B
Se pide implementar una función que dado un número (de cualquier tipo que
soporte la operación de división) y una lista de números del mismo tipo,
divida a ese número por cada uno de los elementos contenidos en la lista y
devuelva una lista con el resultado.
-}
divide :: Float -> [Float] -> [Float]
divide num l = foldr (\l1 acum -> [(num/l1)]++acum) [] l

{-
Ejercicio C
-}
data Arbol a = AV | Rama (Arbol a) a (Arbol a)

mostrarArbol :: (Show a)=>Arbol a -> String
mostrarArbol AV = ""
mostrarArbol (Rama AV r AV) = show r
mostrarArbol (Rama hi r hd) = "("++ mostrarArbol hi ++")|-"++ show r ++"-|("++ mostrarArbol hd ++")"

data Arbol' a = AV' | Rama' (Arbol' a) a (Arbol' a) deriving Show
a =(Rama' (Rama' (Rama' AV' 60 AV') 8 AV') 5 (Rama' AV' 4 AV'))

{-
Ejercicio D
-}
data ArbolD a = AVD | RamaD (ArbolD a) a (ArbolD a) deriving Show
espejo :: ArbolD a -> ArbolD a 
espejo AVD = AVD
espejo (RamaD hi r hd) = RamaD (espejo hd) r (espejo hi)

{-
Ejercicio I
-}

class Coleccion t where
    esVacia :: t a -> Bool
    insertar :: t a -> a -> t a
    primero :: t a -> a
    eliminar :: t a -> t a
    size :: t a -> Int

data Pila a = Pil [a] deriving Show
data Cola a = Col [a] deriving Show

instance Coleccion Pila where
    esVacia (Pil a) = length a == 0
    insertar (Pil a) b = Pil (a++[b])
    primero (Pil a) = last a
    eliminar (Pil a) = Pil (init a)
    size (Pil a) = length a

instance Coleccion Cola where
    esVacia (Col a) = length a == 0
    insertar (Col a) b = Col (a++[b])
    primero (Col a) = head a
    eliminar (Col a) = Col (tail a)
    size (Col a) = length a

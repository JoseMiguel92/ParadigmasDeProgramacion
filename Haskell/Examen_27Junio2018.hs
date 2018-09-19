module Examen_27Junio2018 where
{-Ejer 1-}
--data Natural = Cero | Suc Natural

{-Ejer 2-}
cribar :: Int -> [Int] -> [Int]
cribar e l = foldl (\acum x-> if (x`mod`e) /= 0 then acum++[x] else acum) [] l
--cribar e l = foldr (\x acum -> if (x`mod`e) /= 0 then x:acum else acum) [] l


{-Ejer 3
fst (foldr (\e (acum,pos) -> if (e == x) && (pos `mod`2 /= 0) then (y:acum,pos-1) else (e:acum,pos-1)) ([],length l) l)


ultimaAparicion :: Eq a => [a] -> [(a,Int)]
ultimaAparicion l = dameLista (ultimaAparicionAux l)

ultimaAparicionAux :: Eq a => [a] -> ([a],Int,[(a,Int)])
ultimaAparicionAux l = foldr (\x (acum,pos,(n,posa)) -> if esta x acum then (x:acum,pos-1,(n,posa)) else (x:acum,pos-1,(x:vistos,posa)) ) ([],length l,[([],length l)]) l

esta :: Eq a => a -> [a] -> Bool
esta e [] = False
esta e (x:xs) = if e == x then True else esta e xs

dameLista :: ([a],Int,[a]) -> [a]
dameLista (x,y,z) = z
-}

ultimaAparicion :: [Int] -> [(Int,Int)]
ultimaAparicion l = ultimaAparicionAux l length l

ultimaAparicionAux :: [Int] -> Int -> [(Int,Int)]
ultimaAparicionAux l pos = foldl (\(acum,posI) x -> actualizaDupla (x,posI) acum ) ([],pos) l

actualizaDupla :: (Int,Int) -> [(Int,Int)] -> [(Int,Int)]
actualizaDupla (e,posN) l = foldl (\acum (x,posA) -> if e == x then acum ++ [(e,posN)] else acum ++ [(x,posA)]) [] l

esta :: Int -> [Int] -> Bool
esta x [] = False
esta x (l:ls) = x == l || esta x ls

{-Ejer 4-}
quickSort::Ord a=>[a]->[a]
quickSort [] = []
quickSort (pivote:es) = quickSort [y|y<-es,y<pivote] ++ [pivote] ++ quickSort [x|x<-es,x>=pivote]
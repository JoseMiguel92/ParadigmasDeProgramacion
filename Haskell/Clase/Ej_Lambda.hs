module EjLambda where

final::[Int]->Int->[Int]
final l n = foldr (\e acum ->e:acum)[n] l

-- darVuelta [(7,1),(4,3),(5,0)] -> [(1,7),(3,4),(0,5)]
darVuelta::[(Int,Int)]->[(Int,Int)]
darVuelta l = foldr(\(x,y) acum -> (y,x):acum) [] l

eliminar::[Int]->Int->[Int]
eliminar l e = foldl(\acum x -> if (x==e) then acum else acum++[x]) [] l

cribar::[Int]->Int->[Int]
cribar l n = foldr(\e acum -> if (e`mod`n==0) then acum else e:acum) [] l
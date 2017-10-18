module Recursividad where

separar:: [Char]->([Char],[Char])
separar l = foldl (\ (v,c) letra -> if esVocal letra then (v++[letra],c) else (v, c++[letra]))([],[])l


esVocal::Char->Bool
esVocal 'a'=True
esVocal 'e'=True
esVocal 'i'=True
esVocal 'o'=True
esVocal 'u'=True
esVocal 'A'=True
esVocal 'E'=True
esVocal 'I'=True
esVocal 'O'=True
esVocal 'U'=True
esVocal _ = False

-----------------------------------------------------------------------

sustituir::(Eq a)=>[a]->a->a->[a]
sustituir l x y = foldl (\acum n-> if (n==x)&&( even (length acum + 1)) then acum++[y] else acum++[n] ) [] l
--------------------------------------------------------------------------
parImpar::[Int]->([Int],[Int])
parImpar l = foldr (\ n  (p,i) ->if even n then (n:p,i) else (p,n:i))([],[])l

-----------------------------------------------------------------------

mergeSort::[Int]->[Int]
mergeSort []=[]
mergeSort [x]=[x]
mergeSort l = fusionar (mergeSort a) (mergeSort b)
               where
                (a,b) = partir l [] (length l `div`2)
                
                
fusionar:: [Int]->[Int] ->[Int]
fusionar [] l = l
fusionar l []= l
fusionar (x:xs) (y:ys) = if(x<y) then x:(fusionar xs (y:ys)) else y:(fusionar (x:xs) ys)


partir::[Int]->[Int]->Int->([Int],[Int])
partir (x:xs) acum l = if length acum == l then (acum,(x:xs)) else partir xs (acum++[x]) l

---------------------------------------------------------------
secuencia:: [Int]->[[Int]]
secuencia l = foldl(\acum n-> acum ++ [(last acum) ++ [n]]) [[]]   l

secuencia1::[Int]->[[Int]]
secuencia1 []=[[]]
secuancia1 l = secuencia1 (init l) ++ [l]








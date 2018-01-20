module MergeSort where

mergesort::[Int]->[Int]
mergesort []=[]
mergesort [x]=[x]
mergesort l = fusionar (mergesort a) (mergesort b)
                where
                (a,b) = partir l [] (length l `div` 2)



fusionar::[Int]->[Int]->[Int]
fusionar [] l = l
fusionar l [] = l
fusionar (x:xs) (y:ys) = if x<y 
                        then x:fusionar xs (y:ys)
                        else y:fusionar (x:xs) ys


partir::[Int]->[Int]->Int->([Int],[Int])
partir (x:xs) acum l = if length acum == l then (acum,(x:xs)) else partir xs (acum++[x]) l
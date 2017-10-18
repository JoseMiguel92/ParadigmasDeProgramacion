module Ternas where
    
ternas::[Int]->[Int]->[(Int,Int,Int)]
ternas [] _ =[]
ternas  _ [] = []
ternas _ [x] = []
ternas (x:xs) (y1:y2:ys) =  (x,y1,y2):(ternas xs ys)
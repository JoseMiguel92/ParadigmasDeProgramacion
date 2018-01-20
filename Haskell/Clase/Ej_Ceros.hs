module Ceros where
--Cuente la secuencia de ceros que hay en una lista de enteros
ceros::[Int]->Int
ceros [] = 0
ceros [x] = if x == 0 then 1 else 0
ceros (x:y:ys) = if (x==0)&&(y/=0) then 1 + ceros ys
                else ceros (y:ys)

--Dada una lista de numeros enteros devolver una lista de listas con los numeros comprendidos entre cada cero
--[7,9,0,4,0,0,2,-1,3]
--[[7,9],[4],[],[2,-1,3]]
ceros'::[Int]->[[Int]]
ceros' l = ceros'' l [][]

ceros''::[Int]->[Int]->[[Int]]->[[Int]]
ceros'' [] acum1 acum2 = acum2++[acum1]
ceros'' (n:ns) acum1 acum2 = if n==0 then
                                    ceros'' ns [] (acum2++[acum1])
                                else ceros'' ns (acum1++[n]) acum2
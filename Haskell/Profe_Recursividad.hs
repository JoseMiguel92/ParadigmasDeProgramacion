module Recursividad where

cribar1::[Int]->Int->[Int]
cribar1 [] _=[]
cribar1 (n:ns) x = if (n`mod`x)==0 then cribar1 ns x else n:(cribar1 ns x)


cribar2::[Int]->Int->[Int]
cribar2 l x = [n|n<-l,n`mod`x/=0]


criba3::[Int]->Int->[Int]
criba3 l x = criba3Aux l x []

criba3Aux::[Int]->Int->[Int]->[Int]
criba3Aux [] _ acum = acum 
criba3Aux (n:ns) x acum = if n`mod`x==0 then criba3Aux ns x acum else
                            criba3Aux ns x (acum++[n])
                           
                            
ternas:: [Int]->[Int]->[(Int,Int,Int)]
ternas [] _ =[]
ternas _ [] = []
ternas _ [x] = []
ternas (x:xs) (y1:y2:ys) = (x,y1,y2):(ternas xs ys)


separar::[Int]->([Int],[Int])
separar l = separarAux l [] []

separarAux::[Int]->[Int]->[Int]->([Int], [Int])
separarAux [] acum1 acum2 =(acum1,acum2)
separarAux (n:ns) acum1 acum2 = if contiene n acum2 then 
                                  separarAux ns acum1 acum2
								else if contiene n acum1 then
								  separarAux ns (borrar n acum1) (acum2++[n])
								else
								  separarAux ns (acum1 ++[n]) acum2  


contiene::Int->[Int]->Bool
contiene _ []=False
contiene x (n:ns) = (x==n)||(contiene x ns)

borrar::Int ->[Int]->[Int]
borrar _ []=[]
borrar x (n:ns)= if (x==n) then borrar x ns else n:(borrar x ns)







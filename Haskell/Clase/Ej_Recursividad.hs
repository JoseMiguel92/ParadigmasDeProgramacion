module Recursividad where

cribar1::[Int]->Int->[Int]
cribar1 [] _=[]
cribar1 (n:ns) x = if (n`mod`x)==0 then cribar1 ns x  else n:cribar1 ns x

--Lista por compresion
cribar2::[Int]->Int->[Int]
cribar2 l x = [n|n<-l,n`mod`x/=0]

--Con acumulador
cribar3::[Int]->Int->[Int]
cribar3 l x = cribar3Aux l x []
cribar3Aux::[Int]->Int->[Int]->[Int]
cribar3Aux [] _ acum = acum
cribar3Aux (n:ns) x acum = if n`mod`x==0 then cribar3Aux ns x acum else cribar3Aux ns x (acum++[n])
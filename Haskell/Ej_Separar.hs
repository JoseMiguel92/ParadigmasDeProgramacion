module Separar where
separar::[Int]->([Int],[Int])
separar l = separarAux l [][]

separarAux::[Int]->[Int]->[Int]->([Int],[Int])
separarAux [] acum1 acum2 =(acum1,acum2)
separarAux (n:ns) acum1 acum2 = if contiene n acum2 then 
    separarAux ns acum1 acum2 
    else if contiene n acum1 then 
    separarAux ns (borrar n acum1) (acum2++[n]) 
    else separarAux ns (acum1 ++[n]) acum2

--Otra forma para separarAux
separarAux::[Int]->[Int]->[Int]->([Int],[Int])
separarAux [] acum1 acum2 =(acum1,acum2)
separarAux (n:ns) acum1 acum2
    |contiene n acum2 = separarAux ns acum1 acum2
    |contiene n acum1 = separarAux ns (borrar n acum1) (acum2++[n])
    |otherwise = separarAux ns (acum1 ++[n]) acum2

contiene::Int->[Int]->Bool
contiene _ []=false
contiene x (n:ns) = (x==n)||(contiene x ns)

borrar::Int->[Int]->[Int]
borrar _ []=[]
borrar x (n:ns)= if (x==n) then borrar x ns else n:(borrar x ns)
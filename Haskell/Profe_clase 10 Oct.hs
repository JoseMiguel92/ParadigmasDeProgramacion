data Arbol a = AV|Nodo a (Arbol a) (Arbol a)  deriving Show

-- Altura de un arbol

altura::Arbol a -> Int
altura AV = 0
altura (Nodo a izq der)= 1 + maximo(altura (izq),altura(der))	
								
maximo::(Int,Int)->Int
maximo(a,b)= if a>b then a else b		


-- Recorridos

recIn:: Arbol a ->[a]
recIn AV=[]
recIn (Nodo a izq der)= recIn(izq)++[a]++ recIn(der)

recPre:: Arbol a ->[a]
recPre AV=[]
recPre (Nodo a izq der)= a:(recPre(izq)++ recPre(der))	

recPost:: Arbol a ->[a]
recPost AV=[]
recPost (Nodo a izq der)= recPost(izq)++ recPost(der)++[a]

-- Son hermanos

hermanos::Eq a =>(Arbol a,a,a)->Bool
hermanos(AV,_,_)=False
hermanos(Nodo r AV (Nodo rhd deri derd),h1,h2)=hermanos((Nodo rhd deri derd),h1,h2)
hermanos(Nodo r (Nodo rhi izi izd) AV,h1,h2)=hermanos((Nodo rhi izi izd),h1,h2)
hermanos(Nodo r (Nodo rhi izi izd )(Nodo rhd deri derd),h1,h2)
	|((rhi==h1)&&(rhd==h2))=True
	|(rhi==h2)&&(rhd==h1)=True
	|otherwise=hermanos(Nodo rhi izi izd,h1,h2)||hermanos(Nodo rhd deri derd,h1,h2)

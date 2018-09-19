module Tipos where
    type Coordenadas = (Integer,Integer)
    transPunto :: Coordenadas -> Coordenadas
    transPunto (x,y) = (y,x)

    data Figura = As | Dos | Tres | Cuatro | Cinco | Seis | Siete | Sota | Caballo | Rey
    
    data Palo = Oros | Copas | Espadas | Bastos deriving (Eq, Show, Ord)

    igualPalo :: (Palo, Palo) -> Bool
    igualPalo (x,y) = x == y

    mayorPalo :: (Palo,Palo) -> Palo
    mayorPalo (x,y) = if x > y then x else y

    data Carta = Carta (Figura, Palo)

    damePalo :: Carta -> Palo
    damePalo(Carta(figura,palo)) = palo

    data Poligono = Triangulo(Float,Float) | Cuadrado Float | Rectangulo(Float,Float)
    
    area:: Poligono -> Float
    area (Triangulo (b,h)) = (1/2) * b * h
    area (Cuadrado lado) = lado * lado
    area (Rectangulo (b,h)) = b * h

    raices  :: (Integer,Integer,Integer) -> (Integer,Integer)
    raices(a,b,c) = let raizDisc = sqrt(b^2-4*a*c);
                        denom = 2*a
                        in ( (b+raizDisc)/denom, (b-raizDisc)/denom )

    raices2  :: (Integer,Integer,Integer) -> (Integer,Integer)
    raices2(a,b,c) = ((b+raizDisc2)/denom2, (b-raizDisc2)/denom2)
        where
            raizDisc2 = sqrt(b^2-4*a*c)
            denom2 = 2*a
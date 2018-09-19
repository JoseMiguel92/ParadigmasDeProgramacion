module EjercicioLargoTenis where
    
    temporada2013 :: [Torneo]
    temporada2013 = [(T("Open de Australia",["Novak Djokovic","Andy Murray"],[[6,7,6,6],[7,6,3,2]])),(T("Indian Wells",["Juan Martín del Potro","Rafael Nadal"],[[6,3,4],[4,6,6]])),(T("Mutua Madrid Open",["Rafael Nadal","Stanislas Wawrinka"],[[6,6],[2,4]])),(T("Wimbledon",["Novak Djokovic","Andy Murray"],[[6,7,6],[4,5,4]]))]

    --t1 = (T("Open de Australia",["Novak Djokovic","Andy Murray"],[[6,7,6,6],[7,6,3,2]]))

    data Fila = F (String,String,Int)
    data Torneo = T (String,[String],[Sets])
    type Sets = [Integer]
    type Resultado = String

    instance Show Fila where
        show (F(torneo,ganador,sets)) = "Nombre: " ++ torneo ++ "," ++ "ganador: "++ ganador ++ ",sets jugados " ++ show sets ++ "\n"

    instance Eq Fila where
        (F (t1,g1,s1)) == (F (t2,g2,s2)) = t1 == t2
    instance Ord Fila where
        (F (t1,g1,s1)) >= (F (t2,g2,s2)) = t1 >= t2
        (F (t1,g1,s1)) <= (F (t2,g2,s2)) = t1 <= t2
    
    mostrarListadoOrdenadoTorneos :: [Torneo] -> [Fila]
    mostrarListadoOrdenadoTorneos ts = foldr (\(T(t,js,ss)) acum -> (insertarOrdenado (ganador (T(t,js,ss))) acum) ) [] ts
    
    insertarOrdenado :: Fila -> [Fila] -> [Fila]
    insertarOrdenado f1 [] = [f1]
    insertarOrdenado f1 (f2:fs) = if f1 < f2 then f1:(f2:fs) else f2:insertarOrdenado f1 fs

    ganador :: Torneo -> Fila
    ganador (T(t,js,ss)) = if sumaPuntos (ss!!0) > sumaPuntos (ss!!1) then F (t,(js!!0),length (ss!!0)) else F (t,(js!!1),length (ss!!1))

    sumaPuntos :: [Integer] -> Integer
    sumaPuntos p = foldr (+) 0 p
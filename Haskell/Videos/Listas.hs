module Listas where
    longitud :: [Integer] -> Integer
    longitud [] = 0
    longitud (primero:resto) = 1 + longitud(resto)
    --Polimorfica
    longitudPolimorfica :: [a] -> Integer
    longitudPolimorfica [] = 0
    longitudPolimorfica (x:xs) = 1 + longitudPolimorfica xs

    alFinal :: (a,[a]) -> [a]
    alFinal (e,[]) = [e]
    alFinal (e,primero:resto) = primero:alFinal(e,resto) 

    -- Se pide una funcion que dada una lista de enteros devuelva una 2 tupla donde 
    -- para cada entero se muestre el indice de la primera aparicion del entero.
    -- (EXAMEN)
    primeraAparicion :: [Integer] -> [(Integer,Integer)]
    primeraAparicion l = primAux(l,1,[],[])

    primAux :: ([Integer], Integer, [Integer], [(Integer,Integer)]) -> [(Integer,Integer)]
    primAux ([], pos, vistos, resultado) = resultado
    primAux (primero:resto, pos, vistos, resultado) = 
        if esta(primero, vistos) then
            primAux (resto, pos+1, vistos, resultado)
        else
            primAux (resto, pos+1, primero:vistos, (primero, pos):resultado)

    esta :: (Integer,[Integer]) -> Bool
    esta (elemento, []) = False
    esta (elemento, primero:resto) = 
        if elemento == primero then 
            True 
        else esta(elemento, resto)


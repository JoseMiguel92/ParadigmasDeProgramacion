module Examen_19Diciembre2017 where
    --(LForm ["Org","Mundial","Salud"]) <= (LForm ["Org","Mundial","Salud"])
    --(Acronym "OMS") > (Acronym "OMS")
    --insertar (Acronym "ONU") [(Acronym "OI"),(LForm ["Organizacion","Mundial","Salud"]),(Acronym "UEFA")]
    --sustituir (Acronym "ONU") (LForm ["Organizacion","Naciones", "Unidas"]) [Acronym "OI",Acronym "OMS",Acronym "ONU",Acronym "UEFA"]
    --sustituir (LForm ["Organizacion","Naciones", "Unidas"]) (Acronym "ONU") [(Acronym "OI"),(Acronym "OMS"),(LForm ["Organizacion","Naciones","Unidas"]),(Acronym "UEFA")]
    data Concepto = Acronym String | LForm [String]

    instance Show Concepto where
        show (Acronym a) = "Acronym " ++ a
        show (LForm a) = "LForm " ++ show a

    instance Eq Concepto where
        (Acronym a) == (Acronym b) = a == b
        (LForm a) == (LForm b) = a == b
        (Acronym a) == (LForm b) = a == toAcronym b
        (LForm b) == (Acronym a) = a == toAcronym b
  
    instance Ord Concepto where
        (Acronym a) < (Acronym b) = a < b
        (Acronym a) < (LForm (b:bs)) = a < b
        (LForm (b:bs)) < (Acronym a) = b < a
        (LForm (a:as)) < (LForm (b:bs)) = a < b
        (Acronym a) <= (Acronym b) = a <= b
        (Acronym a) <= (LForm (b:bs)) = a <= b
        (LForm (b:bs)) <= (Acronym a) = b <= a
        (LForm (a:as)) <= (LForm (b:bs)) = a < b

    toAcronym :: [String] -> String
    toAcronym [] = ""
    toAcronym (b:bs) = [head b] ++ toAcronym bs

    insertar :: Concepto -> [Concepto] -> [Concepto]
    insertar a [] = [a]
    insertar a (b:bs) = if a < b then a:(b:bs) else b:insertar a bs

    sustituir :: Concepto -> Concepto -> [Concepto] -> [Concepto]
    sustituir (Acronym a) (LForm b) lista = foldr (\e acum -> if (e == (Acronym a)) then (LForm b):acum else e:acum) [] lista
    sustituir (LForm b) (Acronym a) lista = foldr (\e acum -> if (e == (LForm b)) then (Acronym a):acum else e:acum) [] lista
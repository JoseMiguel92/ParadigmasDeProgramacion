import Data.List (sort)

data Concept = Acronym String | LForm [String] deriving Show

areEqual :: String -> [String] -> Bool
areEqual [] _ = True
areEqual _ [] = True
areEqual (c:cs) (l:ls) = c == head l && areEqual cs ls

instance Eq Concept where
  (Acronym a1) == (Acronym a2) = a1 == a2
  (LForm l1) == (LForm l2) = l1 == l2
  (Acronym a1) == (LForm l1) =  areEqual a1 l1
  (LForm l1) == (Acronym a1) = areEqual a1 l1

instance Ord Concept where
  (Acronym a1) < (Acronym a2) = a1 < a2
  (Acronym a1) < (LForm lista) = a1 < head lista
  (LForm lista) < (Acronym a1) = head lista < a1
  (LForm lista1) < (LForm lista2) = head lista1 < head lista2
  (Acronym a1) <= (Acronym a2) = a1 <= a2
  (Acronym a1) <= (LForm lista) = a1 <= head lista
  (LForm lista) <= (Acronym a1) = head lista <= a1
  (LForm lista1) <= (LForm lista2) = head lista1 <= head lista2
  
l1 = LForm["Organizacion", "Mundial", "Salud"]
l2 = LForm["Boletín", "Oficial", "Estado"]
l3 = LForm["Organización", "India"]
l4 = LForm["Union", "European", "Football", "Associations"]
c1 = Acronym "ONU"
c2 = Acronym "BOE"
c3 = Acronym "OMS"
c4 = Acronym "XXX"
c5 = Acronym "OI"
c6 = Acronym "UEFA"


lista :: [Concept]
lista =  [Acronym "OI", LForm["Organizacion", "Mundial", "Salud"], Acronym "UEFA"]

insertar :: Concept -> [Concept] -> [Concept]
insertar c [] = [c]
insertar c (l:ls) = if c==l then (l:ls) else if c<l then (c:l:ls) else l:(insertar c ls)

sustituir :: Concept -> Concept -> [Concept] -> [Concept]
sustituir (Acronym g) (LForm h) l = foldr (\x lista -> if((Acronym g)==x) then (LForm h):lista else x:lista) [] l
sustituir (LForm g) (Acronym h) l = foldr (\x lista -> if((LForm g)==x) then (Acronym h):lista else x:lista) [] l
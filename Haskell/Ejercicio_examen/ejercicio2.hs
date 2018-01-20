module EjercicioExamen2 where 
import Data.Char

type Repo = [Libreria]

data Libreria = Libreria String Int Int

instance Eq Libreria where
 (Libreria s1 m1 n1) == (Libreria s2 m2 n2) = s1 == s2

instance Ord Libreria where
 (Libreria s1 m1 n1) < (Libreria s2 m2 n2) = if s1 == s2 then m1 < m2 else s1 < s2
 (Libreria s1 m1 n1) <= (Libreria s2 m2 n2) = if s1 == s2 then m1 <= m2 else s1 <= s2
 (Libreria s1 m1 n1) > (Libreria s2 m2 n2) = if s1 == s2 then m1 > m2 else s1 > s2
 (Libreria s1 m1 n1) >= (Libreria s2 m2 n2) = if s1 == s2 then m1 >= m2 else s1 >= s2
 

instance Show Libreria where
 show (Libreria nombre major minor) = " " ++ show nombre ++ " " ++ show major  ++ "." ++ show minor ++ " "

class Compatible l where
  sonCompatibles :: l -> l -> Bool

instance Compatible Libreria where
  sonCompatibles (Libreria s1 m1 n1) (Libreria s2 m2 n2) = s1 == s2 && m1 == m2

dameCompatibles :: [Libreria] -> Libreria -> [Libreria]
dameCompatibles l lib = foldr(\x acum -> if sonCompatibles x lib then [x] ++ acum else acum) [] l

-- dameCompatibles [(Libreria "x" 1 3),(Libreria "x" 1 4),(Libreria "x" 3 2),(Libreria "x" 1 2)] (Libreria "x" 1 2)
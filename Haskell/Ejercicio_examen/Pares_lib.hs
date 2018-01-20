module Pares_lib where
class PrecioFinal c where
 damePrecioFinal:: c -> Int

data Musica = Musica String Int

data Libros = Libros String Int

class Tipo c where
 getBase:: c -> pb
 getIVA:: c-> iva

instance Tipo Musica where
 getBase:: (Musica m) = pb
 getIVA:: (Musica m) = iva
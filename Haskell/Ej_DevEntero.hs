module Ej_DevEntero where
tupla :: ((String,Int),(String,Int),(String,Int)) -> (Int,Int,Int)
tupla ((_,x),(_,y),(_,z)) = (x,y,z)
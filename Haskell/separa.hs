separa :: [Integer] -> [[Integer]]
separa l = foldr (\e [u,r] if elem e r then [u,r] else if eleme e u then [borrar e u,e:r else [e:u,r]]) [unicos,repes] l
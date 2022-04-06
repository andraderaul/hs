len :: [a] -> Int
len [] = 0
len (_ : lst) = 1 + len lst

len :: [a] -> Int
len [] = 0
len (_ : lst) = 1 + len lst

len' :: Num a => [t] -> a
len' xs = sum [1 | _ <- xs]
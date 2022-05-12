import Data.List

stringReductions = nub 

strReduction :: [Char] -> [Char]
strReduction [] = []
strReduction [c] = [c]
strReduction (x:xs)
    | x `elem` xs = strReduction xs
    | otherwise = x:strReduction xs

main = do
  str <- getLine
  putStrLn $ stringReductions str
  putStrLn $ reverse $ strReduction $ reverse  str

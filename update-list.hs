f :: (Ord a, Num a) => [a] -> [a]
f arr = [if x < 0 then (- x) else x | x <- arr]

main :: IO ()
main = do
  inputdata <- getContents
  mapM_ print (f $ map (read :: String -> Int) $ lines inputdata)

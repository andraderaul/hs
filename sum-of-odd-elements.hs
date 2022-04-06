f :: Integral a => [a] -> a
f arr = sum ([x | x <- arr, x `mod` 2 == 1])

main :: IO ()
main = do
  inputdata <- getContents
  print (f $ map (read :: String -> Int) $ lines inputdata)

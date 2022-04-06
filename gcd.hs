module Main where

gcd' :: Integral a => a -> a -> a
gcd' n m
  | n == m = n
  | m == 0 = n
  | n == 0 = m
  | m >= n = gcd' n (m - n)
  | n >= m = gcd' (n - m) m
  | otherwise = 1

main :: IO ()
main = do
  input <- getLine
  print . uncurry gcd' . listToTuple . convertToInt . words $ input
  where
    listToTuple (x : xs : _) = (x, xs)
    convertToInt = map (read :: String -> Int)

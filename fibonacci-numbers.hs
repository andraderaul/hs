module Main where

fibRec :: (Eq a, Num a, Num p) => a -> p
fibRec 0 = 0
fibRec 1 = 1
fibRec n = fibRec (n -1) + fibRec (n -2)

fib :: (Enum a1, Eq a1, Num a1, Num a2) => a1 -> a2
fib n = last [fibRec x | x <- [0 .. n -1]]

main :: IO ()
main = do
  input <- getLine
  print . fib . (read :: String -> Int) $ input

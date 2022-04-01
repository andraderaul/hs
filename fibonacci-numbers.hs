module Main where

fib_rec 0 = 0
fib_rec 1 = 1
fib_rec n = fib_rec(n-1) + fib_rec(n-2)

fib n = last [fib_rec(x) | x <- [0..n-1]]

main = do
    input <- getLine
    print . fib . (read :: String -> Int) $ input

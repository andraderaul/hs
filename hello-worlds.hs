show_hello_world = putStrLn "Hello World"

hello_worlds 1 = show_hello_world
hello_worlds n = do
        show_hello_world
        hello_worlds (n - 1)

main :: IO()
main = do
    n <- readLn :: IO Int
    hello_worlds n

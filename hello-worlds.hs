showHelloWorld :: IO ()
showHelloWorld = putStrLn "Hello World"

helloWorlds :: (Eq a, Num a) => a -> IO ()
helloWorlds 1 = showHelloWorld
helloWorlds n = do
  showHelloWorld
  helloWorlds (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  helloWorlds n

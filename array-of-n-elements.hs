fn :: (Num a, Enum a) => a -> [a]
fn n = [1 .. n]

main :: IO ()
main = do
  n <- readLn :: IO Int
  print (fn n)

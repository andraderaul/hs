stringMingling :: [Char] -> [Char] -> [Char]
stringMingling p q = concat [[x, y] | (x, y) <- zip p q]

main :: IO ()
main = do
  p <- getLine
  q <- getLine
  putStrLn $ stringMingling p q
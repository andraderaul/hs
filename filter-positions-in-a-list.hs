f :: [Int] -> [Int]
f [] = []
f [x] = []
f (x : xs) = head xs : f (tail xs)

main :: IO ()
main = do
  inputdata <- getContents
  mapM_ print . f . map read . lines $ inputdata

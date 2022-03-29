f :: [Int] -> [Int]
f [] = []
f [x] = []
f (x:xs) = (head xs) : f (tail xs)

main = do
	inputdata <- getContents
	mapM_ (putStrLn. show). f. map read. lines $ inputdata

f arr = [ if x < 0 then (-x) else x | x <- arr]

main = do
	inputdata <- getContents
	mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata

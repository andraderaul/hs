solve :: String -> String
solve [] = []
solve (a:b:rest) = b:a: solve rest

main = do
    num <- getLine
    contents <- getContents 
    let strings = words contents
    putStr $ unlines $ map solve strings

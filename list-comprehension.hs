doubledNumbers :: [Integer]
doubledNumbers = [x * 2 | x <- [1 .. 10]]

divided :: [Integer]
divided = [x | x <- [50 .. 100], x `mod` 7 == 3]

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

nouns :: [[Char]]
nouns = ["hobo", "frog", "pope"]

adjectives :: [[Char]]
adjectives = ["lazy", "grouchy", "scheming"]

combines :: [[Char]]
combines = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' :: Num a => [t] -> a
length' xs = sum ([1 | _ <- xs])

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]
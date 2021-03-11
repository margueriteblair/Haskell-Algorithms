{- Create a function nub that removes all
 duplicates from a given list -}

main :: IO ()
main = do
    print ("fuck you, tu no entiendes")

nub :: (Eq a) => [a] -> [a]
nub [] = []
nub [x] = [x]
nub (x:xs)
    | x `Main.elem` xs = nub xs
    | otherwise = x : nub xs
{- Create a function nub that removes all
 duplicates from a given list -}

main :: IO ()
main = do
    print (nub [1, 1, 2, 2, 3, 3])

nub :: (Eq a) => [a] -> [a]
nub [] = []
nub [x] = [x]
nub (x:xs)
    | x `Main.elem` xs = nub xs --Here we check if we have an element in the list already
    | otherwise = x : nub xs
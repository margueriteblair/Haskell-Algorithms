{- Create a function nub that removes all
 duplicates from a given list -}

main :: IO ()
main = do
    print (nub [1, 1, 2, 2, 3, 3])

nub :: (Eq a) => [a] -> [a]
nub [] = []
nub [x] = [x]
nub (x:xs)
    | x `elem` xs = nub xs --Here we check if we have an element in the list already
    | otherwise = x : nub xs

--If the first pattern is matched, we simply don't add x to our recursive call
--Otherwise, if x isn't an element of xs, then we will append x to our recursive call
--The new list we're building is x prepended to the recursive result
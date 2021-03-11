{- create a function elem that return true if an element
    is in a given list and otherwise returns false -}

main :: IO ()
main = do
    print (elem [1, 2, 3, 4, 5] 4)

elem :: (Eq a) => a -> [a] -> Bool
elem [] _ = False
elem xs a 
    | (head xs) == a = True
    | otherwise Main.elem (tail xs) a
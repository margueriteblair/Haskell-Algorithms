{- create a function elem that return true if an element
    is in a given list and otherwise returns false -}

main :: IO ()
main = do
    print (Main.elem [1, 2, 3, 4, 5] 7)

elem :: (Eq a) => [a] -> a -> Bool
elem [] _ = False
elem (x:xs) a
    | x == a = True
    | otherwise = Main.elem xs a
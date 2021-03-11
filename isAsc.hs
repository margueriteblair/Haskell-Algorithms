{- Create afunction isAsc that returns True if the list given to it
    is a list of ascending order-}

main :: IO ()
main = do
    print (isAsc [6,2,3,4,5])

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [b] = True
isAsc (x:y:xs)
    | x > y = False
    | otherwise = isAsc (y:xs)
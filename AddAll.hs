main :: IO ()
main = do
    print (addAll [1,2,3,5])

addAll :: [Int] -> Int
addAll [] = 0
addAll [x] = x
addAll (x:xs) = x + addAll xs
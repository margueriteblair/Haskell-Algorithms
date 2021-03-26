import System.IO

main = do
    print (smallest [1,2,3,4,5,0,10])

smallest :: [Int] -> Int
smallest [] = 0
smallest [x] = x
smallest (x:xs)
    | (smallest xs) < x = smallest xs
    | otherwise = x

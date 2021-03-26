main :: IO ()
main = do
    print (multAll [6,7,1,2,3])


multAll :: [Int] -> Int
multAll [] = 1
multAll [x] = x
multAll (x:xs) = x*(multAll xs) 
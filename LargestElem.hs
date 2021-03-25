--Algorithm to find the largest element in a list

main :: IO ()
main = do
    print (largestElem [2, 5, 3, 1, 7, 3])

largestElem :: [Int] -> Int
largestElem [] = 0
largestElem [x] = x
largestElem (x:xs)
    | (largestElem xs) > x = largestElem xs
    | otherwise = x
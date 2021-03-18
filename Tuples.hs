main :: IO ()
main = do
    print (hasPath [])

--Create a function hasPath that determines if a path from one node
    --to another exists within a directed graph

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] x y = x == y
hasPath xs x y
    | x == y = True
    | otherwise =
        let xs' = [ (n, m) | (n, m) <- xs, n /= x] in
            or [ hasPath xs' m y | (n, m) <- xs, n == x]
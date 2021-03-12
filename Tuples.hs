main :: IO ()
main = do
    print ("Hello, tuples")

--Create a function hasPath that determines if a path from one node
    --to another exists within a directed graph

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [(a, b)] = False
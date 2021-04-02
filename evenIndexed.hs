main :: IO ()
main = do
    print (evenIndexed [1,2,3,4,5])

evenIndexed :: [a] -> [a]
evenIndexed [] = []
evenIndexed [_] = []
evenIndexed (_ : x : xs) = x : evenIndexed x


import System.IO

main = do
    print (loops 5)

loops :: Int -> Int
loops 0 = 0
loops x = x - loops (x-1)
import System.IO

main = do
    print (sumN 6)

sumN :: Int -> Int
sumN 0 = 0
sumN x = x + sumN (x-1)
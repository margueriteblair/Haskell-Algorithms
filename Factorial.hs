import System.IO

main = do
    print (fac 1)

fac :: Int -> Int
fac 0 = 1
fac 1 = 1
fac n
    | n >= 2 = n * fac (n-1)
    | otherwise = n
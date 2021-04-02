main :: IO ()
main = do
    print (Main.exponent 2 2)

exponent :: Int -> Int -> Int
exponent z 1 = z
exponent _ 0 = 1
exponent x y = x * Main.exponent x (y-1)
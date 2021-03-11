main = interact $ (++) "Hello, World.\n"

main2 :: IO ()
main2 = do
  putStrLn "Hello, World."
  x <- getLine
  putStrLn (x)
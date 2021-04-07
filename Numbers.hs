{-# LANGUAGE MultiWayIf #-}
{-We'll be making a guessing game to be played between two players-}

numbers :: IO ()
numbers = do
    putStrLn "Think of a number: "
    number <- getSecretNumber
    putStrLn "Guess the number: "
    play number

getInt :: IO Int
getInt = do
  number <- getLine
  return (read number :: Int)

getSecretNumber :: IO Int
getSecretNumber = do
    number <- getInt
    return number
  

play :: Int -> IO ()
play number = do
  putStr "? "
  guess <- getInt
  if | guess == number ->
         putStrLn "That's correct!"
     | guess > number ->
         do
           putStrLn "Too high!"
           play number
     | otherwise ->
         do
           putStrLn "Too low!"
           play number
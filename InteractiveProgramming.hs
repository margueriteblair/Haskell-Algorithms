{-
Haskell uses a special type 'IO' to distinguish impure, input/output actions
from pure expressions. The idea of IO type is that apart from returning some value,
it may also interact with the outside world along the way. 

The IO type has the following structure:

IO a

where IO is the type name and a is the parameterised value that it returns

IO Int -- is an action that returns an Int
IO () is an action that returns an empty tuple

IO () represents an action that is solely run for its side-effects and simply returns an empty tuple (a void value)

Sometimes, we want to perform a sequence of actions one after the other.
This can be done with 'do' notation in Hasekll, which is used to create one composite
action from two or more individual actions in the do block. 
-}

main :: IO ()
main = do
    hello

hello :: IO ()
hello = do
    putStrLn "Hello"
    putStrLn "World!"
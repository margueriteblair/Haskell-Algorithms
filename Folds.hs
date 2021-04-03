{-
The foldr function associates the combining function to the right.
The right most elements of the data structure will be evaluated first.

-}

import System.IO

--the foldr function is defined as such:

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f v [] = v
foldr f v (x:xs) = f x (Main.foldr f v xs)

sum :: Num a => [a] -> a
sum xs = Prelude.foldr (+) 0 xs
{-
Haskell uses a special type 'IO' to distinguish impure, input/output actions
from pure expressions. The idea of IO type is that apart from returning some value,
it may also interact with the outside world along the way. 

The IO type has the following structure:

IO a

where IO is the type name and a is the parameterised value that it returns

IO Int -- is an action that returns an Int
IO () is an action that returns an empty tuple
-}
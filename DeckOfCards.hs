import System.IO

{-
We're making a deck of cards. Each card should have a rank and a suit.
We will make each card have a tuple of type (Rank, Suit)
-}

data Suit = Hearts
    | Diamonds
    | Spades
    | Clubs
    deriving (Show)
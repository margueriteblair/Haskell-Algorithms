import System.IO

{-
We're making a deck of cards. Each card should have a rank and a suit.
We will make each card have a tuple of type (Rank, Suit)
-}

data Suit = Hearts
    | Diamonds
    | Spades
    | Clubs
    deriving (Show, Enum)

data Rank = Deuce
    | Three
    | Four
    | Five
    | Six
    | Seven
    | Eight
    | Nine
    | Ten
    | Jack
    | Queen
    | King
    | Ace
    deriving (Show, Eq, Ord, Enum)


type Card = (Rank, Suit)

type Deck = [Card]

buildDeck :: Deck
buildDeck = [(rank, suit) | rank <- [Deuce .. Ace], suit <- [Hearts .. Clubs]]
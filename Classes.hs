import System.IO

main = do
    print (Prelude.min 5 3)
{- 
We can think of classes as collections of types that will support operations of the class

The basic type classes are the following:

Eq - equality types
Show - Showable types
Num - Numeric types
Fractional - fractional types (double & float)
Ord - ordered types
Read - Readable types
Integral - Integral types
Enum - enumeration types (like a suit on a deck of cards would be)

-}

--The Eq class supports the comparison methods
--The equals & /= method are type defined as the following:
-- == :: a -> a -> Bool
-- /= :: a -> a -> Bool

--Char, Bool, Int, etc are instances of the Eq class, and that's why we can compare them

--The Ord class requires any type that wants to be an instance of it to first be an instance of the Eq
--class by using a class constraint, and to also support the >, <, <=, >=

class (Eq a) => Ord a where
    (<), (<=), (>), (>=) :: a -> a -> Bool
    min, max :: a -> a -> a

--Ord class also will use the min & max methods as defined:

    x < y = x Main.<= y && x /= y
    x > y = y Main.< x
    x >= y = y Main.<= x

    min x y
      | x Main.<= y = x
      | otherwise = y

    max x y
      | x Main.<= y = y
      | otherwise = x

{-
The Show class is used for types whose values can be represented as strings
and support the 'show' method. All basic types of Haskell are also instances of the show class

The Read class supports the reading and conversion of string representation of
values into actual types using the 'read' method. All basic types in Haskell
are also instances of the Read class.

Sometimes, we have to specify the type to be read in cases where the intended cannot be inferred.

The last class we will look at here is Enum class which supports operations on sequentially ordered types.
-}

--We'll use the 'deriving' keyword to make a new type into an instance of other
--Built-in classes, without the need for defining any of the methods.
--For example, Bool can be declared as:
data Bool = False | True
    deriving (Eq, Prelude.Ord, Show, Read)




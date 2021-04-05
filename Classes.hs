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
== :: a -> a -> Bool
/= :: a -> a -> Bool

--Char, Bool, Int, etc are instances of the Eq class, and that's why we can compare them

--The Ord class requires any type that wants to be an instance of it to first be an instance of the Eq
--class by using a class constraint, and to also support the >, <, <=, >=


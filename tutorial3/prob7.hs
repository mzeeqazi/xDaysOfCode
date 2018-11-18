{-
Define a function above :: Int -> [Int] -> [Int] that removes
all numbers less than or equal to a given number.
-}
import Data.Char
import Data.List

above :: Int -> [Int] -> [Int]
above = filter . ( < )
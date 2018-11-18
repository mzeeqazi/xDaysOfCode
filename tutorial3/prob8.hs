{-
Define a function unequals :: [(Int,Int)] -> [(Int,Int)] that
removes all pairs (x,y) where x == y.
-}


import Data.Char
import Data.List
unequals :: [(Int,Int)] -> [(Int,Int)]
unequals = filter unequal
    where unequal (x,y)= x/=y

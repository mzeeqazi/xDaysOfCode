{-
Write a recursive function concatRec :: [[a]] -> [a] that concatenates a list of lists into a single list. Then, write a similar function concatFold using foldr.
-}

import Data.Char
import Data.List

concatRec :: [[a]] -> [a]
concatRec [] = []
concatRec (x:xs) = x ++ concatRec xs


concatFold :: [[a]] -> [a]
concatFold xs = foldr (++) [] xs
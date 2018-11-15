{-
Using recursion instead of a list comprehension, write a function

reverseKeyRec :: [(Char, Char)] -> [(Char, Char)]

to reverse a key. This function should swap each pair in the given list. For example:

Main> reverseKeyRec [('A', 'G'), ('B', 'H') , ('C', 'I')]
[('G', 'A'), ('H', 'B') , ('I', 'C')]
-}

import Data.Char
import Data.List

reverseKeyRec :: [(Char, Char)] -> [(Char, Char)]
reverseKeyRec [] = []
reverseKeyRec (t:tx) = (snd t, fst t): reverseKeyRec tx 
{-
Write a function

lookUpRec :: Char -> [(Char, Char)] -> Char

that finds a pair by its first component and returns that pair's second component. When you try to look up a character that does not occur in the cipher key, your function should leave it unchanged. Examples:

Main> lookUpRec 'B' [('A', 'F'), ('B', 'G'), ('C', 'H')]
'G'
Main> lookUpRec '9' [('A', 'X'), ('B', 'Y'), ('C', 'Z')]
'9'

Your definition should use recursion, not list comprehension.
-}

import Data.Char
import Data.List
lookUpRec :: Char -> [(Char, Char)] -> Char
lookUpRec c [] = c
lookUpRec c (t:tx)
    | c == fst t = snd t
    | otherwise = lookUpRec c tx
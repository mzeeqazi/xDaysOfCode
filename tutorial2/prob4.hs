{-
This time use a list comprehension to write a function

lookUp :: Char -> [(Char, Char)] -> Char

that finds a pair by its first component and returns that pair's second component. When you try to look up a character that does not occur in the cipher key, your function should leave it unchanged. Examples:

Main> lookUp 'B' [('A', 'F'), ('B', 'G'), ('C', 'H')]
'G'
Main> lookUp '9' [('A', 'X'), ('B', 'Y'), ('C', 'Z')]
'9'
-}

import Data.Char
import Data.List
lookUp :: Char -> [(Char, Char)] -> Char
lookUp c tup
    | null matched = c
    | otherwise = head matched
        where
            matched = [snd t | t<- tup , fst t ==c ]
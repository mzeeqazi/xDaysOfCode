{-
Define a function rmChar :: Char -> String -> String that removes all occurrences of a character from a string.
-}

import Data.Char
import Data.List
rmChar :: Char -> String -> String
rmChar = filter . (/=)

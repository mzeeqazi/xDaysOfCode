{-
Write a list-comprehension version of uppers and use it to check your answer to the first exercise.
-}

import Data.Char
import Data.List

uppers2 :: String -> String
uppers2 str =[toUpper x | x<- str]
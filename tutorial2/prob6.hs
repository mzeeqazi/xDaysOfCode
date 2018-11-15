{-
Text encrypted by a cipher is conventionally written in uppercase and without punctuation. Write a function

normalize :: String -> String

that converts a string to uppercase, removing all characters other than letters and digits (remove spaces too). Example:

Main> normalize "July 4th!"
"JULY4TH"
-}

import Data.Char
import Data.List

normalize :: String -> String
normalize str = [ toUpper x | x<-str, isLetter x || isDigit x ]

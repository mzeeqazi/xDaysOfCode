{-
Write a function multDigits :: String -> Int that returns the product of all the digits in the input string. If there are no digits, your function should return 1. For example,

multDigits "The time is 4:25" == 40
multDigits "No digits here!" == 1

Your definition should use list comprehension. You'll need a library function to determine if a character is a digit, one to convert a digit to an integer, and one to do the multiplication.

-}
import Data.Char
multDigits :: String -> Int
multDigits str = product [ digitToInt x | x<-str, isDigit x]

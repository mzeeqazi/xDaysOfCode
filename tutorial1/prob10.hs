{-
Now write an equivalent function multDigitsRec that also returns the product of all the digits in the input string. If there are no digits, your function should return 1. For example,

multDigits "The time is 4:25" == 40
multDigits "No digits here!" == 1

This time use recursion. You may use library functions that act on single characters or integers, but you may not use library functions that act on a list.
-}
import Data.Char
multDigitsRec :: String -> Int
multDigitsRec [] = 1
multDigitsRec (x:xs)
    | isDigit x = (digitToInt x) * multDigitsRec xs
    | otherwise = multDigitsRec xs
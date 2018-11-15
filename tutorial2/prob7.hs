{-
Write a function

encipherStr :: Int -> String -> String

that normalizes a string and encrypts it, using your functions normalize and encipher. Example:

Main> encipherStr 5 "July 4th!"
"OZQD4YM"

You will need to copy your solutions to the previous questions.
-}

import Data.Char
import Data.List
 
rotate :: Int -> [Char] -> [Char]
rotate k list | 0<k && k < length list    = (drop k list) ++(take k list)
              | otherwise = error "error"

makeKey :: Int -> [(Char,Char)]
makeKey n = zip alphabet (rotate n alphabet)
    where
        alphabet = ['A' .. 'Z' ]

lookUp :: Char -> [(Char, Char)] -> Char
lookUp c tup
    | null matched = c
    | otherwise = head matched
        where
            matched = [snd t | t<- tup , fst t ==c ]

encipher :: Int -> Char -> Char
encipher n c
            | n==0= c
            | otherwise = lookUp c (makeKey n) 


normalize :: String -> String
normalize str = [ toUpper x | x<-str, isLetter x || isDigit x ]

encipherStr :: Int -> String -> String
encipherStr _ [] = []
encipherStr x str  = [encipher x s | s<- normalize str]

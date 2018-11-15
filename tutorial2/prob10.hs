{-
Write the functions

decipher :: Int -> Char -> Char
decipherStr :: Int -> String -> String

that decipher a character and a string, respectively, by using the key with the given offset. Your function should leave digits and spaces unchanged, but remove lowercase letters and other characters. For example:

Main> decipherStr 5 "OZQD4YM"
"JULY4TH"

You will need to replicate and use some of your previous solutions.
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
normalize str = [ toUpper x | x<-str, isLetter x || isDigit x   ]


reverseKey :: [(Char, Char)] -> [(Char, Char)]
reverseKey [] = []
reverseKey list_tup = [(snd x, fst x)| x<-list_tup]

decipher :: Int -> Char -> Char
decipher n c = lookUp c (reverseKey (makeKey n))

decipherStr :: Int -> String -> String
decipherStr _ []= []
decipherStr n str =[ decipher n s | s<-str ]
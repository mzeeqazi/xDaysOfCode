{-
Copy your function rotate from the previous question and use it to write a function

makeKey :: Int -> [(Char, Char)]

that returns the cipher key with the given offset.

Example:
Main> makeKey 5
[('A','F'),('B','G'),('C','H'),('D','I'),('E','J'),('F','K'),
('G','L'),('H','M'),('I','N'),('J','O'),('K','P'),('L','Q'),
('M','R'),('N','S'),('O','T'),('P','U'),('Q','V'),('R','W'),
('S','X'),('T','Y'),('U','Z'),('V','A'),('W','B'),('X','C'),
('Y','D'),('Z','E')]

The cipher key should show how to encrypt all of the uppercase English letters, and there should be no duplicates: each letter should appear just once amongst the pairs' first components (and just once amongst the second components).
-}

import Data.Char
import Data.List

rotate :: Int -> [Char] -> [Char]
rotate k list | 0<k && k < length list    = (drop k list) ++(take k list)
              | otherwise = error ""

makeKey :: Int -> [(Char,Char)]
makeKey n = zip alphabet (rotate n alphabet)
    where
        alphabet = ['A' .. 'Z' ]
{-
Write a function

encipher :: Int -> Char -> Char

that encrypts the given single character using the key with the given offset. For example:

Main> encipher 5 'C'
'H'
Main> encipher 7 'Q'
'X'

You will need to copy your solutions to the previous questions so you can use them in your definition of encipher.
-}


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

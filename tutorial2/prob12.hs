{-
Write a function

candidates :: String -> [(Int, String)]

that decrypts the input string with each of the 26 possible keys and, when the decrypted text contains ``THE'' or ``AND'', includes the decryption key and the text in the output list.

Main> candidates "DGGADBCOOCZYMJHZYVMTOJOCZHVS"
[(5,"YBBVYWXJJXUTHECUTQHOJEJXUCQN"),
(14,"PSSMPNOAAOLKYVTLKHYFAVAOLTHE"),
(21,"ILLFIGHTTHEDROMEDARYTOTHEMAX")]

You will need to duplicate and use some of your previous work.
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

contains :: String -> String -> Bool
contains str1 str2 = or [ str2 `isPrefixOf` drop i str1| i <- [0 .. ((length str1)-1) ] ]


candidates :: String -> [(Int, String)]
candidates [] =[]
candidates str = [ (n, decipherStr n str ) |  n <- [1 .. 25] , checkContainment n  ]
            where checkContainment n = (contains (decipherStr n str) "THE") || (contains (decipherStr n str) "AND")

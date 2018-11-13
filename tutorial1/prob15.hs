{-
Dame Curious is a crossword enthusiast. She has a long list of words that might appear in a crossword puzzle, but she has trouble finding the ones that fit a slot. Write a function

crosswordFind :: Char -> Int -> Int -> [String] -> [String]

to help her. The expression

crosswordFind letter inPosition len words

should return all the items from words which (a) are of the given length and (b) have letter in the position inPosition. For example, if Curious is looking for seven-letter words that have 'k' in position 1, she can evaluate the expression:

crosswordFind 'k' 1 7 ["funky", "fabulous", "kite", "icky", "ukelele"]

which returns ["ukelele"]. (Remember that we start counting with 0, so position 1 is the second position of a string.)

Your definition should use a list comprehension. You may also use a library function which returns the nth element of a list, for argument n, and the function length.

-}
import Data.Char
import Data.List
crosswordFind :: Char -> Int -> Int -> [String] -> [String]
crosswordFind letter pos len words = [ z | z<-words, length z == len, correctlyPlaced z  ]
    where
        correctlyPlaced z = pos < len && z!! pos == letter

{-
Write another function, this time using recursion, capitaliseRec which, given a word, capitalises it. That means that the first character should be made uppercase and any other letters should be made lowercase. For example,

capitaliseRec "edINBurgH" == "Edinburgh"

You may need to write a helper function; of the helper function and the main function only one needs to be recursive. You must write a type signature for each function you write.


-}
import Data.Char 
import Data.List

-- Recursive version
capitaliseRec :: String -> String
capitaliseRec [] = []
capitaliseRec (x:xs) = toUpper x : lowerRec xs

-- Helper function
lowerRec :: String -> String
lowerRec [] = []
lowerRec (x:xs) = toLower x : lowerRec xs
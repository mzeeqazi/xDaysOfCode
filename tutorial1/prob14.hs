{-
Now write the equivalent function using a recursion.
Using the function capitalise from the previous problem (which you should explicitly copy into the workspace for this problem), write a function

titleRec :: [String] -> [String]

which, given a list of words, capitalises them as a title should be capitalised. The proper capitalisation of a title (for our purposes) is as follows: The first word should be capitalised. Any other word should be capitalised if it is at least four letters long. For example,

titleRec ["tHe", "sOunD", "ANd", "thE", "FuRY"]
== ["The", "Sound", "and", "the", "Fury"]

You may use capitaliseRec and any of its auxiliary functions (but need to explicitly copy them into the workspace for this problem). All functions should have a type signature.
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

-- Recursive version
titleRec :: [String] -> [String]
titleRec [] = []
titleRec (w:words) = capitaliseRec w : correctCase words

correctCase :: [String] -> [String]
correctCase [] = []
correctCase (x:xs)
        | length x >= 4 =  capitaliseRec x : correctCase xs
        | otherwise = lowerRec x : correctCase xs  
{-
Using the function capitalise from the previous problem (which you should explicitly copy into the workspace for this problem), write a function

title :: [String] -> [String]

which, given a list of words, capitalises them as a title should be capitalised. The proper capitalisation of a title (for our purposes) is as follows: The first word should be capitalised. Any other word should be capitalised if it is at least four letters long. For example,

title ["tHe", "sOunD", "ANd", "thE", "FuRY"]
== ["The", "Sound", "and", "the", "Fury"]

Your function should use a list comprehension, and not recursion. Besides the capitalise function, you will probably need some other auxiliary functions. You must specify their type signature. You may use library functions that change the case of a character and the function length.
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

correctCase :: String -> String
correctCase [] = []
correctCase x
        | length x >= 4 = capitaliseRec x  
        | otherwise = lowerRec x 

-- List-comprehension version. Why are there two cases to consider in this list-comprehension?
title :: [String] -> [String]
title [] = []
title (w:words) = capitaliseRec w : [ correctCase x | x<-words ]



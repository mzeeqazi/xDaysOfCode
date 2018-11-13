{-
Now write a recursive function containsRec that takes two strings and returns True if the first contains the second as a substring. You can use the library function isPrefixOf, which returns True if the second string begins with the first string, and/or any other library function. For example,

containsRec "United Kingdom" "King" == True
containsRec "Appleton" "peon" == False
containsRec "" "" == True

Pay attention to the last case of the above three.
-}

import Data.Char
import Data.List
containsRec :: String -> String -> Bool
containsRec "" str2 = False
containsRec (s:sx) str2 
    | str2 `isPrefixOf` (s:sx) = True
    | otherwise = containsRec sx str2
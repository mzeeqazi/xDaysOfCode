{-
Write a function contains that takes two strings and returns True if the first contains the second as a substring. You can use the library function isPrefixOf, which returns True if the second string begins with the first string, and/or any other library function. For example,

contains "United Kingdom" "King" == True
contains "Appleton" "peon" == False
contains "" "" == True

Your definition should use a list comprehension, not recursion. A hint: you can use the library function drop to create a list of all possible suffixes (``last parts'') of a string. 
-}

import Data.Char
import Data.List

contains :: String -> String -> Bool
contains str1 str2 = or [ str2 `isPrefixOf` drop i str1| i <- [0 .. ((length str1)-1) ] ]
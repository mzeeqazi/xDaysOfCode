{-
Write a recursive function rmCharsRec :: String -> String -> String that removes all characters in the
first string from the second string, using your function rmChar from exercise 6.
Then write the same function rmCharsFold using foldr.
-}


import Data.Char
import Data.List

rmChar :: Char -> String -> String
rmChar = filter . (/=)

rmCharsRec :: String -> String -> String
rmCharsRec [] s = s
rmCharsRec (s:sx) str = rmCharsRec sx (rmChar s str )

rmCharsFold :: String -> String -> String
rmCharsFold = flip ( foldr rmChar)
     

{-
Using your function uniform write a function valid :: [[Int]] -> Bool that tests whether a list of lists of Int is a matrix (it should test the properties 1) and 2) specified above).
-}

import Data.Char
import Data.List

type Matrix = [[Int]]

uniform :: [Int] -> Bool
uniform x = all (== head x) x


valid :: Matrix -> Bool
valid matrix = prop1 && prop2
   where 
     prop1 =  uniform ( map length matrix)
     prop2 = not (null matrix )&& (not ( null (head matrix)))


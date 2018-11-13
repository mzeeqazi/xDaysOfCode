{-
Write the recursive function searchRec. You may like to use an auxiliary function in your definition, but you shouldn't use any library functions.
Your function should return the positions of all occurrences of the second argument in the first. For example

searchRec "Bookshop" 'o' == [1,2,6]
searchRec "senselessness's" 's' == [0,3,7,8,11,12,14]
-}

import Data.Char
import Data.List

searchRec :: String -> Char -> [Int]
searchRec = searchIndex 0 
    where
        searchIndex i [] _ = []
        searchIndex i (s:sx) ch 
            | ch == s = i : searchIndex (i+1) sx ch
            | otherwise = searchIndex (i+1) sx ch
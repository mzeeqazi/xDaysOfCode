{-
Write a function search :: String -> Char -> [Int] that returns the positions of all occurrences of the second argument in the first. For example

search "Bookshop" 'o' == [1,2,6]
search "senselessness's" 's' == [0,3,7,8,11,12,14]

You should use a list comprehension, not recursion. You may use the function zip :: [a] -> [b] -> [(a,b)], the function length :: [a] -> Int, and the term forms [m..n] and [m..].
-}


import Data.Char
import Data.List


search :: String -> Char -> [Int]
search str goal =[ x | x<-[0..((length str) -1 )], str!!x ==goal ]
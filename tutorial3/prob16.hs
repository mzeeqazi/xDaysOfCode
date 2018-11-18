{-
Next, we will look at matrix addition and multiplication. As matrices we will use lists of lists of Ints.

The declaration below, which you can find in your tutorial3.hs, makes the type Matrix a shorthand for the type [[Int]].

type Matrix = [[Int]]

Our first task is to write a test to show whether a list of lists of Int is a matrix. This test should verify two things: 1) that the lists of Int are all of equal length, and 2) that there is at least one row and one column in the list of lists.
Write a function uniform :: [Int] -> Bool that tests whether the integers in a list are all equal. You can use the library function all, which tests whether all the elements of a list satisfy a predicate; check the type to see how it is used. If you want, you can try to define all in terms of foldr and map.
-}

import Data.Char
import Data.List

uniform :: [Int] -> Bool
uniform x = all (== head x) x

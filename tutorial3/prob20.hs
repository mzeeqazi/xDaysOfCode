{-
Adding two matrices of equal size is done by pairwise adding the elements that are in the same position, i.e. in the same column and row, to form the new element at that position.

We will use zipWith to implement matrix addition.

Write a function plusM that adds two matrices. Return an error if the input is not suitable. It might be helpful to define a helper function plusRow that adds two rows of a matrix.
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

plusM :: Matrix -> Matrix -> Matrix
plusM a b
    | not (valid a && valid b) = error "Invalid Matrices"
    | length a /= length b = error "Matrix not equal"
    | length ( head a)/= length(head b) = error "incompatible Matrix "
    | otherwise = zipWith (zipWith (+)) a b
    
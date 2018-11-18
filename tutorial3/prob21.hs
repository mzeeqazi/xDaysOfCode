{-
For matrix multiplication we need what is called the dot product or inner product of two vectors.

Matrix multiplication is then defined as follows: two matrices with dimensions (n,m) and (m,p) are multiplied to form a matrix of dimension (n,p) in which the element in row i, column j is the dot product of row i in the first matrix and column j in the second.

Define a function timesM to perform matrix multiplication. Return an error if the input is not suitable. It might be helpful to define a helper function dot for the dot product of two vectors (lists). The function should then take the dot product of the single row with every column of the matrix, and return the values as a list. To make the columns of a matrix readily available you can use the function transpose.
-}

import Data.Char
import Data.List

uniform :: [Int] -> Bool
uniform x = all (== head x) x


valid :: Matrix -> Bool
valid matrix = prop1 && prop2
   where 
     prop1 =  uniform ( map length matrix)
     prop2 = not (null matrix )&& (not ( null (head matrix)))


type Matrix = [[Int]]
timesM :: Matrix -> Matrix -> Matrix
timesM m1 m2 
    | not (valid m1 && valid m2)    = error "Matrices must be valid"
    | length (head m1) /= length m2 = error "Must be kxn and nxl Matrices"
    | otherwise = map m3Row m1
                where
                m3Row m1_row = map (sum . zipWith (*) m1_row) $ transpose m2
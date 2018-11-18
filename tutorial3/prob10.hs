{-
Write an expression that is equivalent to the given expression using
map and filter.

[2 * x | x <- xs, x > 3]
-}

import Data.Char
import Data.List

largeDoubles :: [Int] -> [Int]
largeDoubles xs = map (*2) (filter (>3) xs)
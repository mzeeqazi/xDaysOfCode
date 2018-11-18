{-
As we have seen, list comprehensions process a list using transformations similar to
map and filter. In general, [f x | x <- xs, p x] is equivalent to map f (filter p xs).

Write an expression that is equivalent to the given expression using map and filter.

[toUpper c | c <- s, isAlpha c]
-}

import Data.Char
import Data.List

upperChars :: String -> String
upperChars str = map toUpper (filter isAlpha str)
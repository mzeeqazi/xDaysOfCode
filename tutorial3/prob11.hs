{-
Write an expression that is equivalent to the given expression using map and filter.

[reverse s | s <- strs, even (length s)]

-}

import Data.Char
import Data.List

reverseEven :: [String] -> [String]
reverseEven str = map reverse (filter evenlength str)
    where evenlength s = even (length s)  
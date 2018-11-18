{-
Show how to define zipWith using zip and the higher-order functions map and uncurry, instead of the list comprehension.
-}

import Data.Char
import Data.List
zipWith2 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith2 xs ys = map ( uncurry f) (zip xs ys)
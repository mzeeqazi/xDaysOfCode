{-
A useful higher-order function is zipWith. It is a lot like the function zip that you have seen, which takes two lists and combines the elements in a list of pairs. The difference is that instead of combining elements as a pair, you can give zipWith a specific function to combine each two elements. The definition is as follows:

zipWith f [] _ = []
zipWith f _ [] = []
zipWith f (x:xs) (y:ys) = f x y : zipWith f xs ys

Another useful function for working with pairs is uncurry, which turns a function that takes two arguments into a function that operates on a pair.

Look up the definition of uncurry. What is returned by the following expression?

Main> uncurry (+) (10,8)

Show how to define zipWith using zip and a list comprehension.
-}

import Data.Char
import Data.List

zipWith2 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith2 xs ys = [f x y | (x,y)<- zip xs ys]

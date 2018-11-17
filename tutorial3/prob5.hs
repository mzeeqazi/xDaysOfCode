{-
Removing elements from a list is another common need. For example, we
might want to remove non-alphabetic characters from a string, or
negative integers from a list. This pattern is captured by the
filter function.

Consider a function g defined in terms of an imaginary
predicate p as follows (a predicate is just a function into a
Bool value):

g [] = []
g (x:xs) | p x = x : g xs
| otherwise = g xs

The function g can be written with recursion (as above), or with
a comprehension, or with filter: all three definitions are equivalent.

g xs = [ x | x <- xs, p x ]
g xs = filter p xs

For instance, we can write a function evens :: [Int] -> [Int],
which removes all odd numbers from a list using filter and the
standard function even :: Int -> Int:

evens list = filter even list

This is equivalent to:

evens list = [x | x <- list, even x]

Below is the definition of filter. Note the similarity to
the way g is defined (just below filter). As compared with g,
filter takes one additional argument: the predicate that we use
to test each element.

filter :: (a -> Bool) -> [a] -> [a]
filter p [] = []
filter p (x:xs) | p x = x : filter p xs
| otherwise = filter p xs

g [] = []
g (x:xs) | p x = x : g xs
| otherwise = g xs

Use filter and other standard library functions for this exercise and the next ones.

Write a function alphas :: String -> String that removes all non-alphabetic characters from a string.
-}


import Data.Char
import Data.List

alphas :: String -> String
alphas = filter isLetter
    
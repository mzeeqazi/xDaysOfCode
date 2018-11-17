{-
Haskell functions are values, which may be processed in the
same way as other data such as numbers, tuples or lists. In this
tutorial we'll use a number of higher-order functions, which
take other functions as arguments, to write succinct definitions for
the sort of list-processing tasks that you've previously coded
explicitly using recursion or comprehensions.

The first part of the tutorial deals with three higher-order functions,
map, filter, and fold. For each of these you will be asked to write
three functions. The second part deals with fold in some more detail,
and will ask you to write functions using both map and filter at the
same time.

Transforming every list element by a particular function is a common
need when processing lists---for example, we may want to

- add one to each element of a list of numbers,
- extract the first element of every pair in a list,
- convert every character in a string to uppercase, or
- add a grey background to every picture in a list of pictures.


The map function captures this pattern, allowing us to avoid
the repetitious code that results from writing a recursive function
for each case.


Consider a function g defined in terms of an imaginary function
f as follows:

g [] = []
g (x:xs) = f x : g xs

The function g can be written with recursion (as above),
or with a comprehension, or with map: all three definitions are
equivalent.

g xs = [ f x | x <- xs ]
g xs = map f xs

Below is the definition of map. Note the similarity to
the recursive definition of g (just below map). As compared with g,
map takes one additional argument: the function f that
we want to apply to each element.

map :: (a -> b) -> [a] -> [b]
map f [] = []
map f (x:xs) = f x : map f xs

g [] = []
g (x:xs) = f x : g xs

Given map and a function that operates on a single element, we
can easily write a function that operates on a list. For instance,
the function that extracts the first element of every pair can be
defined as follows (using fst :: (a,b) -> a):

fsts :: [(a,b)] -> [a]
fsts pairs = map fst pairs

Use map and other suitable library functions, for this exercise and the next ones.

Write a function uppers :: String -> String that converts a string to uppercase.
-}


import Data.Char
import Data.List
import Control.Monad

uppers :: String -> String
uppers = map toUpper  
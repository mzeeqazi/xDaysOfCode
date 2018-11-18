{-
The map and filter functions act on elements individually;
they never combine one element with another.

Sometimes we want to combine elements using some operation. For
example, the sum function can be written like this:

sum [] = 0
sum (x:xs) = x + sum xs

Here we're essentially just combining the elements of the list using
the + operation. Another example is reverse, which
reverses a list:

reverse [] = []
reverse (x:xs) = reverse xs ++ [x]

This function is just combining the elements of the list, one by one,
by appending them onto the end of the reversed list. This time the
``combining'' function is a little harder to see. It might be easier
if we wrote it this way:

reverse [] = []
reverse (x:xs) = x `snoc` reverse xs

snoc x xs = xs ++ [x]

Now you can see that `snoc` plays the same role as +
played in the example of sum.

These examples (and many more) follow a pattern: we break down a list
into its head x and tail xs, recurse on xs, and then apply some function
to x and the modified xs. The only things we need to specify are the
function such as + or snoc and the initial value such as
0 in the case of sum and [] in the case of reverse.

This pattern is called ``a fold'' and is implemented in Haskell via
the function foldr.

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f u [] = u
foldr f u (x:xs) = x `f` foldr f u xs

g [] = u
g (x:xs) = x `f` g xs

The function g can be written with recursion (as above) or by
using a fold: both definitions are equivalent.

g xs = foldr f u xs

For example, we can define sum :: [Int] -> Int as follows, using (+) as the function and 0 as the initial value (unit):

sum :: [Int] -> Int
sum ns = foldr (+) 0 ns

Note: to treat an infix operator like + as a
function name, we need to wrap it in parentheses.

We will practice the use of foldr by writing several functions first with recursion,
and then using foldr. You can use other standard library functions as well.

Look at the recursive function productRec :: [Int] -> Int that computes the product of
the numbers in a list, and write an equivalent function productFold using foldr.
-}

import Data.Char
import Data.List

productRec :: [Int] -> Int
productRec []     = 1
productRec (x:xs) = x * productRec xs

productFold :: [Int] -> Int
productFold xs = foldr (*) 1 xs

{-
Write a function inRange :: Int -> Int -> [Int] -> [Int] to return all numbers in the input list within the range given by the first two arguments (inclusive). For example,

inRange 5 10 [1..15] == [5,6,7,8,9,10]

Your definition should use list comprehension, not recursion.

-}

inRange :: Int ->  Int -> [Int] -> [Int]
inRange lo hi xs = [ x | x<- xs, x>=lo, x <= hi  ]
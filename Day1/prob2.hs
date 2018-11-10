{-
Again, write a function which takes as argument a list of integers and returns half of each even integer in that list.
For example halveEvensRec [0,2,1,7,8] == [0,1,4]

This time use recursion, not a list comprehension. You may use div and mod again.
-}

halveEvensRec :: [Int] -> [Int]
halveEvensRec [] = []
halveEvensRec (x:xs) 
    | mod x 2 ==0 = [(div x 2)] ++ halveEvensRec(xs) 
    | otherwise = halveEvensRec(xs)  
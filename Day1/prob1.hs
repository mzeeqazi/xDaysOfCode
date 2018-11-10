{-
Write a function halveEvens :: [Int] -> [Int], which takes as argument a list of integers and returns half of each even integer in that list.
For example halveEvens [0,2,1,7,8] == [0,1,4]

Your definition should use list comprehension, not recursion.
You may use the functions div, mod :: Int -> Int -> Int.
-}



halveEvens :: [Int] -> [Int]
halveEvens xs = [ div x 2  | x<-xs, mod x  2 == 0 ]


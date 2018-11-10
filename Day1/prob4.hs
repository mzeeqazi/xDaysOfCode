{-
Once again, write a function to return all numbers in the input list within the range given by the first two arguments (inclusive). For example,

inRangeRec 5 10 [1..15] == [5,6,7,8,9,10]

This time your definition should use recursion, not list comprehension.
-}



inRangeRec :: Int ->  Int -> [Int] -> [Int]
inRangeRec lo hi [] = []
inRangeRec lo hi (x:xs) 
            | x >= lo && x <= hi = [x] ++ inRangeRec lo hi xs
            | otherwise = inRangeRec lo hi xs    
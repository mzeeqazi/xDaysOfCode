{-
Write a function countPositives to count the positive numbers (strictly greater than 0) in a list. For example,
countPositives [0,1,-3,-2,8,-1,6] == 3
Your solution should use a list comprehension. You may not use recursion, but you will need a specific library function.
-}


countPositives :: [Int] -> Int
countPositives xs = sum[1 | x<-xs , x>0 ]

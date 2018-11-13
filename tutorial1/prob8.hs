{-}
Again, Professor Pennypincher will not buy anything if he has to pay more than 199.00 Pounds. But, as a member of the Generous Teachers Society, he gets a 10% discount on anything he buys. Write a function pennypincherRec :: [Int] -> Int that takes a list of prices and returns the total amount that Professor Pennypincher would have to pay, if he bought everything that was cheap enough for him.

    Prices should be represented in Pence, not Pounds, by integers. To deduct 10% off them, you will need to convert them into float first, using the function fromIntegral. To convert back to Int, you can use the function round, which rounds to the nearest integer. You can write a helper function discount :: Int -> Int to do this. Note that all your function definitions should come with a type signature.
    
    For example,
    pennypincherRec [4500, 19900, 22000, 39900] == 41760
    
    This time your solution should use a recursion and no library functions.
    -}

    -- Helper function
discount :: Int -> Int
discount price = round ( 0.9* fromIntegral price)

-- Recursive version
pennypincherRec :: [Int] -> Int
pennypincherRec [] = 0
pennypincherRec (price:prices) 
    | discount (div price 100) < 199 = discount price + pennypincherRec prices
    | otherwise =pennypincherRec prices 
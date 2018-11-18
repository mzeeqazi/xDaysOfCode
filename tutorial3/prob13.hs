{-
Write a recursive function andRec :: [Bool] -> Bool that checks whether every item in a list is True.
Then, write the same function using foldr, this time called andFold.
-}
import Data.Char
import Data.List

andRec :: [Bool] -> Bool
andRec [] = True
andRec (x:xs)
    | x==True = x && andRec xs
    | x==False = False


andFold :: [Bool] -> Bool
andFold xs = foldr (&&) True xs
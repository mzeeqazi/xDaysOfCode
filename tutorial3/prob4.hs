{-
Write a function penceToPounds :: [Int] -> [Float] that turns prices given in pence into the same price in pounds.
-}

import Data.Char
import Data.List

penceToPounds :: [Int] -> [Float]
penceToPounds = map ((*0.01).fromIntegral)

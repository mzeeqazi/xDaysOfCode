{-
Write a function capitalise :: String -> String which, given a word, capitalises it. That means that the first character should be made uppercase and any other letters should be made lowercase. For example,

capitalise "edINBurgH" == "Edinburgh"

Your definition should use a list comprehension and library functions toUpper and toLower that change the case of a character.
-}
import Data.Char
import Data.List

capitalise :: String -> String
capitalise [] =[]
capitalise (x:xs) = toUpper x : [toLower y | y<-xs ]
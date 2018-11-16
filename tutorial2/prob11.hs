{-
One kind of brute-force attack on an encrypted string is to decrypt it using each possible key and then search for common English letter sequences in the resulting text. If such sequences are discovered then the key is a candidate for the actual key used to encrypt the plaintext. For example, the words ``the'' and ``and'' occur very frequently in English text: in the Adventures of Sherlock Holmes, ``the'' and ``and'' account for about one in every 12 words, and there is no sequence of more than 150 words without either ``the'' or ``and''.

The conclusion to draw is that if we try a key on a sufficiently long sequence of text and the result does not contain any occurrences of ``the'' or ``and'' then the key can be discarded as a candidate.

Write a function contains :: String -> String -> Bool that returns True if the first string contains the second as a substring (this exercise is the same as the last of the optional exercises of the previous tutorial).

Main> contains "Example" "amp"
True
Main> contains "Example" "xml"
False

-}

import Data.Char
import Data.List

contains :: String -> String -> Bool
contains str1 str2 = or [ str2 `isPrefixOf` drop i str1| i <- [0 .. ((length str1)-1) ] ]
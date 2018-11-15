{-
The Caesar cipher is one of the easiest forms of encryption to break. Unlike most encryption schemes commonly in use today, it is susceptible to a simple brute-force attack of trying all the possible keys in succession. The Caesar cipher is a symmetric key cipher: the key has enough information within it to use it for encryption as well as decryption.


Decrypting an encoded message is easiest if we transform the key first. Write a function

reverseKey :: [(Char, Char)] -> [(Char, Char)]

to reverse a key. This function should swap each pair in the given list. For example:

Main> reverseKey [('A', 'G'), ('B', 'H') , ('C', 'I')]
[('G', 'A'), ('H', 'B') , ('I', 'C')]

You should use list comprehension, not recursion.
-}

import Data.Char
import Data.List

reverseKey :: [(Char, Char)] -> [(Char, Char)]
reverseKey [] = []
reverseKey list_tup = [(snd x, fst x)| x<-list_tup]
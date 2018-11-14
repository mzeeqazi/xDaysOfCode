{-
When we talk about cryptography these days, we usually refer to the
encryption of digital messages, but encryption actually predates the
computer by quite a long period. One of the best examples of early
cryptography is the Caesar cipher, named after Julius Caesar because
he is believed to have used it, even if he didn't actually invent
it. The idea is simple: take the message you want to encrypt and shift
all letters by a certain amount between 0 and 26 (called offset). For example: encrypting the sentence ``THIS IS A BIG
SECRET'' with shifts of 5, would result in ``YMNX NX F GNL XJHWJY''.

In this exercise you will be implementing a variant of the Caesar
cipher. You can use the list of library functions linked from the course
webpage, as well as those in the Appendix of the tutorial sheet.


A character-by-character cipher such as a Caesar cipher can be
represented by a key, a list of pairs. Each pair in the list
indicates how one letter should be encoded. For example, a cipher for
the letters A--E could be given by the list

[('A', 'C'), ('B', 'D'), ('C', 'E'), ('D', 'A'), ('E', 'B')] .

Although it's possible to choose any letter as the ciphertext for any
other letter, this tutorial deals mainly with the type of cipher where
we encipher each letter by shifting it the same number of spots around
a circle, for the whole English alphabet.

We can rotate a list by taking some items off the front of it and putting them on the end. For example:


Main> rotate 3 "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
"DEFGHIJKLMNOPQRSTUVWXYZABC"

Your first task is to write a function rotate :: Int -> [Char] -> [Char]. When given a number n greater than 0 and smaller than the length of the input list, your function should rotate the list by n items. Your function should return an error if the number n is negative or too large.
-}

import Data.Char
import Data.List
rotate :: Int -> [Char] -> [Char]
rotate k list | 0<k && k < length list    = (drop k list) ++(take k list)
              | otherwise = error "Not Possible"

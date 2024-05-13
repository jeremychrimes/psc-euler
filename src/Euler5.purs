module Euler5 where

import Prelude

import Data.Array (foldr)



checkList :: Array Int
checkList = [11,13,14,16,17,18,19,20]


singleValidator :: Int -> Int -> Boolean -> Boolean
singleValidator n x b =  b && (mod n x == 0)


arrayValidator :: Array Int -> Int -> Boolean
arrayValidator arr n = foldr (singleValidator n) true arr

euler5 :: Int -> Int
euler5 n  = if (arrayValidator checkList n) then  n else  euler5 (n + 1)

solution5 :: Int
solution5 = euler5 2520
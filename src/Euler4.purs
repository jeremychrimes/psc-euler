module Euler4 where

import Prelude

import Control.MonadPlus (guard)
import Data.Array ((..), reverse)
import Data.Foldable (maximum)
import Data.Maybe (Maybe, fromMaybe)
import Data.String.CodeUnits (fromCharArray, toCharArray)

strReverse :: String -> String
strReverse = fromCharArray <<< reverse <<< toCharArray

isPalindrome :: String -> Boolean
isPalindrome x = x == (strReverse x)

palindromes :: Int -> Int -> Maybe Int
palindromes min max = maximum $ do 
    a <- min .. max
    b <- min .. a 
    let 
        p = (a * b)
        s = show p
    guard $ isPalindrome s
    pure $ p

solution4 :: Int -> Int
solution4 n = 
    fromMaybe 0  (palindromes n (n * 10 - 1))
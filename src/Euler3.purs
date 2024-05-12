module Euler3 where

import Prelude

import Data.Array (cons, head)
import Data.List (List)
import Data.Maybe (fromMaybe)
import Data.Number (remainder)


primeFactors :: Number -> Array Number
primeFactors max = go max 3.0 [] 
    where
        go n z pf 
            | (>) ((*) z z) max = pf
            | (==) (remainder n z) 0.0 = go (n / z) z (cons z pf)
            | otherwise = go n (z + 2.0) pf

solution :: Number -> Number
solution n = fromMaybe 0.0 $ head (primeFactors n)

answer :: Number
answer = solution 600851475143.0
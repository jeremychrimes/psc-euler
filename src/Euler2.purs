module Euler2
  ( answer
  )
  where

import Prelude

import Data.Foldable (sum)
import Data.Int (even)
import Data.List (List, range, (..))
import Data.List as List

fibs :: Int -> Int
fibs n = f n 0 1
    where 
        f 0 _ b = b
        f i a b = f(i - 1) b (a + b)


answer :: Int
answer = (0..40)    # map (\x -> fibs x)
                    # List.filter (even)
                    # List.filter (\n -> n < 4000000)
                    # sum
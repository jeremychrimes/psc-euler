module Euler1
  ( answer
  )
  where

import Prelude


import Data.List (range, filter)
import Data.Traversable (sum)

ns = range 0 999

muliples = filter (\n -> mod n 3 == 0 || mod n 5 == 0) ns

answer ∷ Int
answer = sum muliples

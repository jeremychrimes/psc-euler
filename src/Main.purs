module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Euler3 (answer)

main :: Effect Unit
main = do
  log (show answer)

module Euler6
  ( answer6
  )
  where

import Prelude


pow :: Int -> Int
pow x = x * x

sumSq :: Int -> Int 
sumSq x = f x 0
    where 
        f n acc
            | n == 0 = acc
            | n > 0 = f (n - 1) (acc + pow n)
            | otherwise = acc

sqSum :: Int -> Int 
sqSum x = pow (f x 0)
    where 
        f n acc
            | n == 0 = acc
            | n > 0 = f (n - 1) (acc + n)
            | otherwise = acc

euler6 :: Int -> Int
euler6 x = (sqSum x) - (sumSq x)

answer6 :: Int
answer6 = euler6 100
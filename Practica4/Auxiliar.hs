module Auxiliar where

data Natural = Cero | S Natural deriving (Eq, Show)

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

multNat :: Natural -> Natural -> Natural
multNat Cero m = Cero
multNat (S n) m = sumaNat m ( multNat n m)
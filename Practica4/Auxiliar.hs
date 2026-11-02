module Auxiliar where

data Natural = Cero | S Natural deriving (Eq, Show)
data Entero = Zero | Succ Entero | Neg Entero deriving ( Eq, Show)


sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

multNat :: Natural -> Natural -> Natural
multNat Cero m = Cero
multNat (S n) m = sumaNat m ( multNat n m)


negativo :: Entero -> Entero
negativo Zero = Zero
negativo (Succ n) = Neg (Succ n)
negativo (Neg n) = n

sumaEnt :: Entero -> Entero -> Entero
sumaEnt Zero m = m
sumaEnt (Succ n) m = Succ (sumaEnt n m)

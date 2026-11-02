module Natural where
import Auxiliar


data Entero = Zero | Succ Entero | Neg Entero deriving ( Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-
1-Funcion: a_natural

-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = if n > 0 
              then S (a_natural (n - 1)) 
              else error "error"



{-
2-Funcion: a_entero

-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n



{-
3-Funcion: potenciaNat

-}

potenciaNat :: Natural -> Natural -> Natural
potenciaNat n Cero = S Cero
potenciaNat n (S m) = multNat n (potenciaNat n m)



{-
4-Funcion: facNat


-}

facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)



{-
5-

-}


{-
6-

-}


{-
7-

-}

module Natural where
import Auxiliar





{-
1-Funcion: a_natural

Descripcion: agarra un numero entero n y lo pasa a representar como Sucesor(n).

Uso:ghci > a_natural 0
ghci > Cero
ghci > a_natural 2
ghci > S ( S Cero )

-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n - 1)) 



{-
2-Funcion: a_entero

Descripcion: agarra un numero escrito como sucesor(n) y lo pasa a entero n.

Uso:ghci > a_entero Cero
ghci > 0
ghci > a_entero ( S ( S ( S Cero ) ) )
ghci > 3

-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n



{-
3-Funcion: potenciaNat

Descripcion: eleva un numero Natural a la potencia del segundo 

Uso:ghci > potencia ( S ( S ( S Cero ) ) ) ( S ( S Cero ) )
ghci > S ( S ( S ( S ( S ( S ( S ( S ( S Cero ) ) ) ) ) ) ) )

-}

potenciaNat :: Natural -> Natural -> Natural
potenciaNat n Cero = S Cero
potenciaNat n (S m) = multNat n (potenciaNat n m)



{-
4-Funcion: facNat

Descripcion: saca el factorial de un numero por secursion

Uso:ghci > facNat ( S ( S ( S Cero ) ) )
ghci > S ( S ( S ( S ( S ( S Cero ) ) ) ) )

-}

facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)







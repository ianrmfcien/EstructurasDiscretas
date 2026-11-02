module Natural where
import Auxiliar




{-
5-Funcion: multiEnt

Descripcion: hace la multiplicacion de 2 numero enteros positivos o negativos

Uso:ghci > multiEnt ( Neg ( Succ ( Succ ( Succ ( Succ Zero ) ) ) ) ) ( Succ (
Succ Zero ) )
ghci > Neg ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ Zero ) )
) ) ) ) ) )


-}

multiEnt :: Entero -> Entero -> Entero
multiEnt Zero m = Zero 
multiEnt m Zero = Zero 
multiEnt (Succ n) m = sumaEnt m (multiEnt n m)
multiEnt (Neg n) m = negativo (multiEnt n m)
multiEnt n (Neg m) = negativo (multiEnt n m)
multiEnt (Neg n) (Neg m) = multiEnt n m



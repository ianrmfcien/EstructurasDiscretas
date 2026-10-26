module Practica3 where
import Modulo (esParBit)
 

{-
2-Funcion: cetes

Descripcion: le das un monto inicial y una cantidad de tiempo y te da el monto total segun el tiempo
-}
data Tiempo = Dias Float | Meses Float

cetes :: Float -> Tiempo -> Float
cetes vali (Dias 28)   = vali * (1 + 0.0609 * (28 / 360))
cetes vali (Meses 1)   = vali * (1 + 0.0609 * (28 / 360))
cetes vali (Dias 182)  = vali * (1 + 0.0691 * (182 / 360))
cetes vali (Meses 6)   = vali * (1 + 0.0691 * (182 / 360))
cetes vali (Dias 364)  = vali * (1 + 0.0744 * (364 / 360))
cetes vali (Meses 12)  = vali * (1 + 0.0744 * (364 / 360))
cetes vali (Dias x)    = vali * (1 + 0.0744 * (x / 360))
cetes vali (Meses y)   = vali * (1 + 0.0744 * ((y * 30) / 360))

{-
3-Funcion: mensajeCetes

Descripcion: le das monto inicial y el tiempo y calcula el monto final y el rendimiento bruto y lo da todo en un mismo mensaje
-}

mensajeCetes :: Float -> Tiempo -> String

mensajeCetes vali (Dias x) = "Despues de " ++ show x ++ "dias, obtuve " ++ show (cetes vali (Dias x) - vali) ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de "++ show (cetes vali(Dias x))

mensajeCetes vali (Meses y) = "Despues de " ++ show y ++ "meses, obtuve " ++ show (cetes vali (Meses y) - vali) ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de "++ show (cetes vali (Meses y))


{-
4- Funcion: negativos

Descripcion: recibe una lista de numeros enteros y cuenta cuantos enteros negativos hay
-}

negativos :: [Int] -> Int
negativos xs = length [1 | x <- xs, x < 0]

{-
5- Funcion: soloPares

Descripcion: recibe una lista de enteros y regresa otra lista con solo los numeros pares 
-}


soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBit x]

{-
6- Funcion: primos 

Descripcion: recibe una lista de enteros t regresa una lista con solo numeros primos
-}

divis :: Int -> [Int]
divis n = [x | x <- [1..n], n `mod` x == 0]

esPrimo :: Int -> Bool
esPrimo n = divis n == [1,n]

primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]

{-
7- Funcion: coprimos

Descripcion: recibe un numero entero y da una lista con los numeros que son coprimos con y hasta el numero dado 
-}

mcd :: Int -> Int -> Int
mcd a 0 = a
mcd a b = mcd b (a `mod` b)

coprimos :: Int-> [Int]
coprimos n = [x | x <- [1..n], mcd x n == 1]
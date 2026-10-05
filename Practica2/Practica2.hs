{-
2-Reconversion

no recuerdo como era el comentario
utulice float en ambos casos ya que permite que el resultado es probable que sea < a 1000
que es el numero mnimo para que salga un entero e incluso si es mayor no garantiza que salga un entero
mientras que para el dato que se ingresa utilice float para abarcar una mayor cantidad de casos
para evitar algun error.

-}

reconversion :: Float -> Float
reconversion dato1 = dato1 / 1000

{-
3-cashback



-}

cashback :: Float -> Float
cashback dato = dato * 0.10 


{- 
4- cashback_monto

-}
puntos :: Float
puntos = 0.10

cashback_monto :: Float -> Float
cashback_monto dinero = dinero * puntos

{-
5- minutosHoras


-}

minutosHoras :: Float -> String
minutosHoras totalmin = show (totalmin / 60) ++ " horas"

{-
6- esEstafa

-}
costo :: Int
costo = 100
 
esEstafa :: Int -> Bool
esEstafa pago = pago - costo >= 0


{-
7- esDescendente

-}
esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente d1 d2 d3 d4 = (d1 > d2) && (d2 > d3) && (d3>d4)

{-
8- imc

-}
imc :: Float -> Float -> String

imc peso estatura = if (peso / (estatura*estatura)) <= 0
                      then "No es posible intenta de nuevo"
                      else if (peso / (estatura*estatura)) < 18.5
                      then "Estas bajo en peso"
                      else if (peso / (estatura*estatura)) < 24.9
                      then "Estas normal de peso"
                      else if (peso / (estatura*estatura)) < 29.9
                      then "Tienes sobrepeso"
                      else "Tienes obecidad"

{-
9- hipotenusa

-}
hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt ( (b*b) + (h*h))


{-
10- pendiente

-}
pendiente :: (Float,Float) -> (Float,Float) -> Float
pendiente (x1,y1) (x2,y2) = (y2 - y1) / (x2 -x1)

{-
11- distanciaPuntos 

-}
distanciaPuntos :: (Float,Float) -> (Float,Float) -> Float
distanciaPuntos (xn1,yn1) (xn2,yn2) = sqrt( ((yn2 - yn1)*(yn2 - yn1)) + ((xn2 -xn1)*(xn2 -xn1)))

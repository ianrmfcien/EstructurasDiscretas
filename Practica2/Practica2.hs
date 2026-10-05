{-
2-Funcion: Reconversion
Descripcion: cambia cualquier valor para quitarles 3 ceros.
Uso: reconversion 1000 = 1
-}

reconversion :: Float -> Float
reconversion dato1 = dato1 / 1000

{-
3-Funcion: cashback

Descripcion: te da el cashback de la tarjeta igual al 10% del precio.

Uso: casjback 267 = 26.7


-}

cashback :: Float -> Float
cashback dato = dato * 0.10 


{- 
4- Funcion: cashback_monto
Descripcion: transforma los puntos que tienes en tu TDC sabiendo que cada punto vale 0.10
Uso: puntos 100 = 10


-}
puntos :: Float
puntos = 0.10

cashback_monto :: Float -> Float
cashback_monto dinero = dinero * puntos

{-
5- Funcion: minutosHoras
Descripcion: trasnforma la cantidad dada de minutos a horas
Uso: minutosHoras 120 = 2 horas


-}

minutosHoras :: Float -> String
minutosHoras totalmin = show (totalmin / 60) ++ " horas"

{-
6- Funcion: esEstafa
Descripcion: Calcula que lo que te estan dando como pago no sea menor al precio del producto
para evitar ser estafado, dando True si no es una estafa
Uso: esEstafa 200 = True 

-}
costo :: Int
costo = 100
 
esEstafa :: Int -> Bool
esEstafa pago = pago - costo >= 0


{-
7- Funcion: esDescendente
Descripcion: verifica que los 4 datos dados esten en orden descendente.
Uso: esDescendente 5 4 3 2 = True

-}
esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente d1 d2 d3 d4 = (d1 > d2) && (d2 > d3) && (d3>d4)

{-
8- Funcion: imc
Descripcion: Calcula tu indice de masa coorporal y te dice en el nivel que te encuentras

Uso: imc 53.5 161 = Estas normal de peso

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
9- Funcion: hipotenusa
Descripcion: Calcula la hipotenusa de un triangulo rectangulo usando base y altura.
Uso: hipotenusa 9.0 12.0 = 15.0

-}
hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt ( (b*b) + (h*h))


{-
10- Funcion: pendiente
Descripcion: calcula la pendiente entre 2 coordenadas (x,y)
Uso: pendiente (3.0 , 2.0) (7.0 ,8.0) = 1.5

-}
pendiente :: (Float,Float) -> (Float,Float) -> Float
pendiente (x1,y1) (x2,y2) = (y2 - y1) / (x2 -x1)

{-
11- Funcion: distanciaPuntos 
Descripcion: calcula la distancia entre 2 puntos (x,y).

Uso: distanciaPuntos (2.0 , 1.0) (5.0 , 5.0) = 5.0

-}
distanciaPuntos :: (Float,Float) -> (Float,Float) -> Float
distanciaPuntos (xn1,yn1) (xn2,yn2) = sqrt( ((yn2 - yn1)*(yn2 - yn1)) + ((xn2 -xn1)*(xn2 -xn1)))

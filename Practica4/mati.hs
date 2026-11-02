data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-
6-Funcion: mayorIgual

Descripcion: compaara 2 matrioska y ve si la primera es mayor o igual a la segunda

Uso:ghci > mayorIgual Mati Mati
ghci > True
ghci > mayorIgual ( Cont ( Cont Mati ) ) ( Cont ( Cont ( Cont Mati ) ) )
ghci > False

-}

mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual (Cont n) Mati = True
mayorIgual Mati (Cont m)  = False
mayorIgual (Cont n) (Cont m) = mayorIgual n m


{-
7-Funcion: aplana

Descripcion: agarra una matrioska y muestra todas las matrioskas que la componen

Uso:ghci > aplana Mati
ghci > [ Mati ]
ghci > aplana ( Cont ( Cont Mati ) )
ghci > [ Cont ( Cont Mati ) , Cont Mati Mati ]

-}

aplana :: Matrioska -> [Matrioska]

aplana Mati = [Mati]
aplana (Cont m) = (Cont m) : aplana m
data Natural = Cero | S Natural deriving (Eq, Show)

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = if n > 0 
              then S (a_natural (n - 1)) 
              else error "¡Los números naturales no pueden ser negativos!"
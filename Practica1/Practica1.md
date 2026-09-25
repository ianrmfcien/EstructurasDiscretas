¿Cuales son las principales diferencias entre Haskell y Rust?

Las variables: en Rust son inmutables, debes de especificarlo explicitamente, mientras que en haskell no existen las variables mutables
Memoria: en rust esta diseñada para proporcionar un alto rendimiento de esta y evitar los problemas comunes de memoria (punteros nulos, desreferenciacion y condiciones de carrera), mientras que Haskell utiliza el mecanismo de recoleccion basura para administrar la memoria y carece de la funcion de administracion de memoria de bajo nivel


¿Porque haskell no ha alcanzado una adopcion significativa en la industria del software?

Cada version de GHC necesita cambios en el cadigo ya que no se puede migrar de una version a otra
Difucultad para depurar debido a (trace)
Esta mas centrado en gente que quiera decubrir una nueva solucion y no una solucion ya probada
Todas esta carencias vienen con muy pocas ventajas y otros lenguajes no solo no tienen estas carencias sino que tienen mas ventajas que haskell, por ello no se popularizo


Si tuvieras que explicarle a una persona que no es de CC la funcion que cumple Git frente a la de github ¿Como se lo explicarias?
git seria como un cuaderno personal en el que tomas apuntes del como avanzas en tus proyectos o metas, solo tu puedes verlo y modificar lo que hay en el, y puedes ver que hiciste anteriormente y ver si te funciona o cambias de estrategia.
Github a diferencia de git seria como publicar tus avances en linea, otra gente puede verlos, ver como avanzas si tus metodos sirven para alcanzar el objetivo que te propones y en algunos caso ayudarte para alcanzar tus metas mas rapido.


Referencias:
ekd123. (2021, 30 de septiembre). Re: Why did Haskell not succeed? [Comentario en un foro en línea]. Reddit. https://www.reddit.com/r/haskell/comments/py8u24/why_did_haskell_not_succeed/
Serokell. (2020, 26 de noviembre). Rust vs. Haskell. Serokell Blog. https://serokell.io/blog/rust-vs-haskell
Mojeed, I. (2021, 10 de diciembre). Rust vs. Haskell performance comparison. LogRocket Blog. https://blog.logrocket.com/rust-vs-haskell-performance-comparison/
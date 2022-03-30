identidad :: t -> t
identidad x = x

primero :: tx -> ty -> tx
primero x y = x

segundo :: tx -> ty -> ty
segundo x y = y

constante5 :: tx -> ty -> tz -> Int
constante5 x y z = 5

mismoTipo :: t -> t -> Bool
mismoTipo x y = True

triple x = 3*x

maximo x y | x >= y = x
           | otherwise = y

distintos x y = x /= y

f1 x y z = x ** y + z <= x + y ** z

f2 x y = ( sqrt x ) / ( sqrt y )

f3 x y = div ( sqrt x ) ( sqrt y )

f4 x y z | x == y = z
         | x ** y == y = x
         | otherwise = y

-- | el tipo de z no cambia
f5 x y z | x == y = z
         | x ** y == y = z
         | otherwise = z      
         
estanRelacionados :: Float -> Float -> Bool
estanRelacionados x y | x <= 3 && y <=3 = True
                      | x <= 7 && y <= 7 = True
                      | x > 7 && y > 7 = True

estanRelacionados x y | x <= 3 && y <=3 = True
                      | 3<x && x <= 7  && y >3 && y<=7 = True
                      | x>7  && y>7 = True
                      | otherwise = False

prodInt :: ( Float , Float ) -> ( Float , Float ) -> Float
proInt (vx, vy) (wx, wy) = vx*xy + wx*wy 

todoMenor :: ( Float , Float ) -> ( Float , Float ) -> Bool
todoMenor  (vx, vy) (wx, wy) | vx < wy = True

distanciaPuntos :: ( Float , Float ) -> ( Float , Float ) -> Float
distanciaPuntos (vx, vy) (wx, wy) = sqrt ( (wx-vx) ^2 + (wy-vy) ^2 )

sumaTerna :: ( Float , Float, Float) -> Float
sumaTerna (x , y, z) = x+y+z

posicPrimerPar ::( Float, Float, Float) -> Int
posicPrimerPar (x, y ,z)| mod x 2 == 0 = 1
                        | mod y 2 == 0 = 2
                        | mod z 2 == 0 = 3
                        | otherwise = 4






































           

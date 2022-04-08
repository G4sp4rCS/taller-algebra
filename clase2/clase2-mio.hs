maximo :: Float -> Float -> Float
maximo x y | x >=y = x
	   | otherwise = y

beta :: Bool -> Int
beta False = 0
beta _ = 1

primero :: a -> b -> a
primero x y = x

constante5 :: a -> b -> a -> Int
constante5 x y z = 5

mismoTipo :: t -> t -> Bool
mismoTipo x y = True

triple :: (Num a ) => a -> a
triple x = 3 * x

f :: (Num a, Ord a) => a -> a -> Bool 
f x y = x*y >=3

pepe :: (Floating t, Eq t, Num u, Eq u) => t -> t -> u -> Bool
pepe x y z = sqrt (x+y) == x && 3*z == 0

f1 x y z = x ** y + z <= x + y ** z

--f2 :: (floating a) => a -
f2 x y = ( sqrt x ) / ( sqrt y )

--f3 x y = div (sqrt x) (sqrt y)

f5 x y z | x == y = z
	 | x ** y == y = z
	 | otherwise = z
suma v w = (fst v + fst w , snd v + snd w)

suma2 (vx, vy)(wx, wy) = (vx + wx, vy + wy)

productoInterno (vx, vy) (wx, wy) = (vx*wx + vy*wy)

todoMenor (vx, vy) (wx, wy)
	| vx < wx && vy < wy = True
	| otherwise = False

distanciaPuntos (x1, y1)(x2,y2) = sqrt((x2-x1)**2 + (y2-y1)**2)

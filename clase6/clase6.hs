-- Es ajeno, estaba en el escritorio de la PC del labo pero messirve.

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria xs = head xs + sumatoria (tail xs)

longitud :: [Int] -> Int
longitud [] = 0
longitud xs = 1 + longitud (tail xs)

pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n xs | n == head xs = True
               | otherwise = pertenece n (tail xs)

primerMultiplode45345 :: [Int] -> Int
primerMultiplode45345 xs | mod (head xs) 45345 == 0 = (head xs)
                         | otherwise = primerMultiplode45345 (tail xs)

sumatoriaPM :: [Int] -> Int
sumatoriaPM [] = 0
sumatoriaPM (x:xs) = x + sumatoria xs

longitudPM :: [Int] -> Int
longitudPM [] = 0
longitudPM (x:xs) = 1 + longitudPM xs

pertenecePM :: Int -> [Int] -> Bool
pertenecePM n [] = False
pertenecePM n (x:xs) | n == x = True
                     | otherwise = pertenecePM n (xs)

productoriaPM :: [Int] -> Int
productoriaPM [] = 1
productoriaPM (x:xs) = x * productoriaPM xs

productoria :: [Int] -> Int
productoria [] = 1
productoria xs = head xs * productoria (tail xs)

sumarN :: Int -> [Int] -> [Int]
sumarN n [] = []
sumarN n xs = ((head xs)+n):(sumarN n (tail xs))

sumarNPM :: Int -> [Int] -> [Int]
sumarNPM n [] = []
sumarNPM n (x:xs) = (x+n):(sumarN n xs)

sumarElPrimero :: [Int] -> [Int]
sumarElPrimero [] = []
sumarElPrimero xs = sumarN (head xs) xs

sumarElPrimeroPM :: [Int] -> [Int]
sumarELPrimeroPM [] = []
sumarElPrimeroPM (x:xs) = sumarN (x) (x:xs)

ultimo :: [Int] -> Int
ultimo [x] = x
ultimo (x:xs) = ultimo xs

sumarElUltimo :: [Int] -> [Int]
sumarElUltimo [] = []
sumarElUltimo xs = sumarN (ultimo xs) xs

pares :: [Int] -> [Int]
pares [] = []
pares xs | mod (head xs) 2 == 0 = (head xs):(pares (tail xs))
         | otherwise = pares (tail xs)

multiplosDeN :: Int -> [Int] -> [Int]
multiplosDeN n [] = []
multiplosDeN n xs | mod (head xs) n == 0 = (head xs):(multiplosDeN n (tail xs))
                  | otherwise = multiplosDeN n (tail xs)
{-FUNCIONA MAL QUITAR-}

quitar :: Int -> [Int] -> [Int]
quitar n [] = []
quitar n xs | n == head xs = (tail xs)
            | otherwise = quitar n (tail xs)

hayRepetidos :: [Int] -> Bool
hayRepetidos [] = False
hayRepetidos xs | div 
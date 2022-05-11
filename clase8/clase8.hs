type Set a = [a]

vacio :: Set Int
vacio = []

agregar :: Eq a => a -> Set a -> Set a
agregar n c | n `elem` c = c
            | otherwise = n:c

union :: Eq a => Set a -> Set a -> Set a
union [] ys = ys
union (x:xs) ys = union xs (agregar x ys)

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)
--11 DE MAYO
combinatorio :: Int -> Int -> Int
combinatorio n m | n == m = 1
                 | m == 0 = 1
                 | otherwise = combinatorio (n-1) m + combinatorio (n-1) (m-1)

agregarElementoAdelante :: Int -> Set [Int] -> Set [Int]
agregarElementoAdelante x [] = []
agregarElementoAdelante x (ys:yss) = agregar (x:ys) (agregarElementoAdelante x yss)

agregarElementoAListas :: Set Int -> Set [Int] -> Set [Int]
agregarElementoAListas [] _ = []
agregarElementoAListas (x:xs) c = union (agregarElementoAListas xs c) (agregarElementoAdelante x c)

variaciones :: Set Int -> Int -> Set [Int]
variaciones c 0 = [[]]
variaciones c k = agregarElementoAListas c (variaciones c (k-1))

insertarEn :: [Int] -> Int -> Int -> [Int]
insertarEn (l:ls) n i | i == 1 = n:(l:ls)
                      | i > 1 = l:(insertarEn ls n (i-1))

insertarEnCadaPosEnUnaListaHastaPos :: [Int] -> Int -> Int -> Set [Int]
insertarEnCadaPosEnUnaLista

insertarEnTodasLasPosiciones :: Int -> Set Int -> Set [Int]
insertarEnTodasLasPosiciones n (l:ls) = (insertarEnTodasLasPosiciones (n) (ls)) `union` (insertarEnTodasLasPosiciones (n) [l])

permutaciones :: Int -> [[Int]]
permutaciones n | n == 1 = [[1]]
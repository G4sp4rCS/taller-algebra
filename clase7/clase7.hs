type Set a = [a]

pertenecePM :: Int -> [Int] -> Bool
pertenecePM n [] = False
pertenecePM n (x:xs) | n == x = True
                     | otherwise = pertenecePM n (xs)

vacio :: Set Int
vacio = []

agregar :: Int -> Set Int -> Set Int
agregar n c | c == vacio = [n]
            | pertenecePM n c = c
            | otherwise = n:c

incluido :: Set Int -> Set Int -> Bool
incluido c1 c2 | c1 == vacio = True
               | pertenecePM (head c1) c2 = incluido (tail c1) c2
               | otherwise = False

iguales :: Set Int -> Set Int -> Bool
iguales c1 c2 | incluido c1 c2 == True && incluido c2 c1 == True = True
              | otherwise = False
--AUXILIAR
perteneceC :: Set Int -> Set (Set Int) -> Bool
perteneceC n [] = False
perteneceC n (c:cs) = iguales n c || perteneceC n cs
--AUXILIAR
agregarC :: Set Int -> Set (Set Int) -> Set (Set Int)
agregarC n [] = [n]
agregarC n (x:xs) | perteneceC n (x:xs) = (x:xs)
                  | otherwise = n:(x:xs)
--AUXILIAR
agregarATodos :: Int -> Set (Set Int) -> Set (Set Int)
agregarATodos n [] = []
agregarATodos n (x:xs) = agregarC (agregar n x) (agregarATodos n xs)
{-
partes :: Int -> Set (Set Int)
partes 0 = [[]]
partes n = union (partes (n-1)) (agregarATodos n (partes (n-1)))
-}
--AUXILIAR

combConTodos :: Int -> Set Int -> Set (Int, Int)
combConTodos n [] = []
combConTodos n (x:xs) = (n,x):(combConTodos n xs)

unionT :: Set (Int, Int) -> Set (Int, Int) -> Set (Int, Int)
unionT [] c2 = c2
unionT (c:cs) c2 | elem c c2 = unionT cs c2
                 | otherwise = c : (unionT cs c2)

productoCartesiano :: Set Int -> Set Int -> Set (Int, Int)
productoCartesiano [] d = []
productoCartesiano (c:cs) d = unionT (combConTodos c d) (productoCartesiano cs d)
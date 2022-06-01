division :: Int -> Int -> (Int,Int)
division a d | a < d = (0,a) 
             | otherwise = (fst qr + 1, snd qr)
             where qr = division (a-d) d

--division 10 3 --> (3,1) = (cociente , resto)
{-
division 10 3 : 
10/3 = (3,1)
7/3 = (2,1)
4/3 = (1,1)
1/3 = (0,1)
Agarra el primero del "anterior" y le suma 1
Agarra el segundo del "anterior" y lo deja igual

division -10 3
-10/3 = (-4, 2)
-7/3 = (-3,2)
-4/3 = (-2,2)
-1/3 = (-1, 2)
2/3 = (0, 2)
-}

division' :: Int -> Int -> (Int,Int)
division' a d | a >= 0 = division a d
division' a d | a >= 0 = (0,a)
              | otherwise = (q,r)
              where q = fst(division' (a+d) d)-1
                    r = snd(division' (a+d) d)


mcd :: Int -> Int -> Int
--(a:b) = (b:r) donde r = el resto de a/b
mcd a 0 = a
mcd a b = mcd b (mod a b) -- snd (division a b) = (mod a b)

menorDivisor :: Int -> Int
menorDivisor 1 = 1
menorDivisor n = menorDivisorDesde n 2

menorDivisorDesde :: Int -> Int -> Int
menorDivisorDesde n k | (mod n k) == 0 = k
                      | otherwise = menorDivisorDesde n (k+1)

mcd2 :: Int -> Int -> Int
mcd2 a 0 = a
mcd2 a 1 = 1
mcd2 1 b = 1
mcd2 a b | menorDivisor a == menorDivisor b = (menorDivisor a) * (mcd2 (div a (menorDivisor a)) (div b (menorDivisor a)))
         |  menorDivisor a > menorDivisor b = mcd2 a (div b (menorDivisor b))
         |  menorDivisor a < menorDivisor b = mcd2 (div a (menorDivisor a)) b

mcd3 :: Int -> Int -> Int
mcd3 a b | a <= b = mdcHasta a b a 
         | otherwise = mdcHasta a b b

mdcHasta :: Int -> Int -> Int -> Int
mdcHasta a b k | mod a k == 0 && mod b k == 0 = k 
               | otherwise = mdcHasta a b (k-1)



















factorial :: Int -> Int
factorial n | n == 0 = 1
            | n > 0 = n * factorial (n-1)

-- pattern matching
factorial2 :: Int -> Int
factorial2 0 = 1
factorial2 n = n * factorial2 (n -1)

-- guardas
factorial3 :: Int -> Int
factorial3 n | n == 0 = 1
             | otherwise = n * factorial3 (n -1)



esPar :: Int -> Bool
esPar n | n==0 = True
        | otherwise = not (esPar(n-1))


fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

parteEntera :: Float -> Integer
parteEntera 0 = 0
parteEntera n = parteEntera(n-1) + 1

parteEntera1 :: Float -> Integer
parteEntera1 n | n > 0 && n < 1 = 0
               | otherwise = parteEntera1 (n-1) + 1

-- mod da el resto
-- div da el cociente

multiplo3 n | n == 3 = 1 
	    | n< 3 = 0
            | otherwise = multiplo3 (n-3)

sumaImpares :: Int -> Int
sumaImpares 1 = 1
sumaImpares n = sumaImpares(n-1) + (2*n-1)

tldi n | n < 10 = True
       | otherwise = tldi(div n 10) && 

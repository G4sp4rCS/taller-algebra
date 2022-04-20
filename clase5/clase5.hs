sumaDivisoresHasta :: Int -> Int -> Int
sumaDivisoresHasta _ 1 = 1
sumaDivisoresHasta n x | mod n x == 0 = x + sumaDivisoresHasta n (x-1)
                       | otherwise = sumaDivisoresHasta n (x-1)

sumaDivisores :: Int -> Int
sumaDivisores n = sumaDivisoresHasta n n

menorDivisorDesde :: Int -> Int -> Int
menorDivisorDesde n m | mod n m == 0 = m
                      | otherwise = menorDivisorDesde n (m+1)


menorDivisor :: Int -> Int
menorDivisor n = menorDivisorDesde n 2

esPrimo :: Int -> Bool
esPrimo 1 = False
esPrimo n | menorDivisor n == n = True
          | otherwise = False
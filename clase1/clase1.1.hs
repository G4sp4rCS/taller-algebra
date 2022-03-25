-- primera funcion
--f x y = x*x + y*y
-- segunda funcion
g x y z = x y + z*z
-- tercera funcion
doble x = 2*x
-- cuarta funcion 
suma x y = x + y
-- quinta funcion
normaVectorial x1 x2 = sqrt(x1^2+x2^2)
-- sexta funcion
funcionCte x = 8

f n | n == 0 = 1
    | otherwise = 0
    
{-- signo n | n > 0 = 1
		| n == 0 =0
		| n < 0 = -1
 --}
signo1 n | n > 0 = 1
		| n == 0 = 1
		| otherwise = -1
		
maximo x y | x >= y = x
		   | otherwise = y
		   
f1 n | n >= 3 = 5

f2 n | n >=3 = 5
	 | n<= 1 = 8
	 
f3 n | n >= 3 = 5
     | n == 2 = undefined
     | otherwise = 8
     
f4 n | n >= 3 = 5
	 | n <= 9 = 7

f5  n | n <= 9 = 7
	  | n >= 3 = 5
	  
signo n | n > 0 = 1
		| n == 0 = 0
		| n < 0 = -1
		
signo2 n | n > 0 =1
		 | otherwise = -1
		 
maximo :: Int -> Int -> Int
maximo xy

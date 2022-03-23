-- clase 1 taller algebra haskell 23/03/22

f x y = x * x + y *y
g x y z = x + y + z * z
doble x = 2*x
suma x y = x + y
-- linea 6 es una norma vectorial
normaVectorial x1 x2 = sqrt((x1^2)+(x2^2))
-- linea 8 es simplemente una funcion constante
funcionCte x = 8

-- Definiciones por casos:
-- Podemos usar guardas para definir funciones por casos:
{--
	f n | n == 0 = 1
	    | n /= 0 = 0

Palabra clave "si no" o "otherwise" = 0

####################################################

la funcion signo

signo n | n > 0 = 1
        | n == 0 = 0
        | n < 0 = -1


signo n | n > 0 = 1
	| n == 0 = 0
	| otherwise = -1
	
maximo xy | x  ## LO TENGO QUE COPIAR Q NO LLEGUE

f1 n | n >= 3 = 5

f2 n | n >= 3 = 5
     | n <= 1 = 8

f3 n | n >= 3 = 5
     | n == 2 = undefined
     | otherwise = 8
     
f4 n | n >= 3 = 5
     | n <= 9 = 5

f5 n | n <= 9 = 7
     | n >= 3 = 5
     
Prestar atencion al orden de las guardas, cuando las condiciones se solapan, el orden de las guardas cambia el comportamiento de la funcion 

Pattern matching:

f n | == 0 = 1
    | n /= 0 = 0
    
Tambien se puede hacer: 
f 0 = 1
f n = 0

f True = True
f False = False

signo n | n > 0 = 1
	| n == 0 = 0
	| n < 0 = -1
	
Tambien se puede hacer:
signo 0 = 0
signo n | n > 0 = 1
	| otherwhise = -1
	
Otro Ejemplo
implementar la funcion cantidadDeSoluciones, que dados dos numeros b y c, calcula la cantidad de soluciones reales la ecuacion cuadratica

X^2 + bX + c = 0

cantidadDeSoluciones b c | b^2 - 4*c > 0 = 2
			 | b^2 - 4*c == 0 = 1
			 | otherwise = 0
			 
Otra posibilidad:

cantidadDeSoluciones b c | d > 0 = 2
			 | d == 0 = 1
			 | otherwise = 0
			 where d = b^2 - 4*c
			 
###############################################
			 
Tipos de datos: int enteros float o sea los racionales bool true,false &&, ||, not	

			 




 --}
 
f n | n == 0 = 1
    | n /= 0 = 1 


{-- prueba --}
-- asdasdasdasdasdasdasd

absoluto 
maximoAbsoluto

maximo x y | x > y = x
	   | otherwise = y

f n | n = True
    | otherwise = False
    
f True = True
f False = False

maximo3 :: Num a => a -> a -> a -> a
maximo3 x y z | maximo x y > z = maximo x y
              | otherwise  = z
        
maximoAbsoluto x y | x > y

absoluto :: Int
absoluto | x >= 0 = x


digitoUnidades :: Int
digitoUnidades x  -- quedo hasta aca

digitoDecenas
 

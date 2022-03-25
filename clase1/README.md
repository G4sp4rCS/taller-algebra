# Clase 1(23/03/2022)(taller)

Clase: https://www.notion.so/Taller-de-lgebra-00cec3f396b041388323a754b9fac081
Time Created: March 24, 2022 11:37 AM

# Primeras funciones

## Presentación:

[clase01.pdf](Clase%201(23%2074087/clase01.pdf)

## Introducción

En este taller da:

- Una introducción a la programación y a la computación.
- Programar los algoritmos que se ven en las teóricas y prácticas usando **programación funcional.**

## Programación funcional

Un programa en un lenguaje funcional es un conjunto de ecuaciones orientadas que definen una o más funciones.
Ejemplo:

```haskell
doble x = 2 * x
```

Esta función devuelve el doble de un número

- x es un parametro
- “doble” es el nombre de la función

La ejecución de un programa en este caso corresponde a la evaluación de una expresión, habitualmente solicitada desde la consola del entorno de programación.

```haskell
*Main> doble 10
20
```

La expresión se evalúa usando las ecuaciones definidas en el programa, hasta llegar a un
resultado. Las ecuaciones orientadas junto con el mecanismo de reducción describen
**algoritmos** (definición de los pasos para resolver un problema).

- como podemos ver el x toma el valor de 10 y el programa devuelve como resultado (output) 20
- “*Main” es el entorno donde ejecutamos las funciones del programa que escribimos.

## Escribir un programa

1. Abrir una terminal.
2. Crear un archivo de texto usando alguno de los siguientes comandos:
- gedit clase.hs
- atom clase.hs
- subl clase.hs
1. Escribir dentro del archivo f x y = x * x + y * y y guardarlo. 
2. Abrir el intérprete de Haskell: Abrir una nueva terminal y ejecutar ghci .
3. Ejecutar alguna operación simple, por ejemplo 8 * 7 .
4. Cargar el archivo: :l clase1.hs .
5. Dentro de GHCI, ejecutar lo siguiente: f 2 3
6. Agregar al código la función g x y z = x + y + z * z y volver a guardar.
7. En ghci , recargar el programa: :r
8. Ejecutar g 2 3 4
9. Si quieren, pueden cerrar el intérprete ejecutando: :q

## Machete

- Números
    - 1  (números)
    - 1.3, 1e-10, 6.022140857e23 (números decimales)
    - (-1) (números negativos)
- Funciones Básicas
    - + (suma), * (multiplicación), / (división), - (resta)
    - div (cociente), mod (resto en la división entera)
    - sqrt (raiz cuadrada), ** (potencia), ^ (potencia)
- Uso de funciones
    - Para aplicar una función, utilizamos el nombre de la función seguido de parámetros 
    con espacios entre medio:
        - f  x1  x2  x3  x4  x5  x6
        - Equivalente a $f(x_1,x_2,x_3,x_4,x_5,x_6)$ en matemática
        - Ejemplo: sqrt 4
        - Ejemplo: div 2  3
    - Para indicar que un parámetro es resultado de otra operación, usamos paréntesis:
        - f  (g  x1)  (h x2 x3)  x3  x4  x5  x6
        - Equivalente a $f(g(x_1), h(x_2,x_3), x_4, x_5, x_6)$ en matemática
        - Ejemplo: sqrt (( sqrt 4 ) - 3)
        - Ejemplo: div (mod 3  5) (mod 4  3)
    

**Observación:**

div es lo mismo que “ / “

```haskell
div 4 2 == (4 / 2)
```

## Guardas (definiciones de funciones por casos)

Podemos usar **guardas** para definir funciones por casos:

$f(x) \{ 1 \ \textrm{si} \ n= 0 \\ \quad \quad \{0 = \textrm{si no}$ 

### En haskell:

```haskell
f n | n == 0 = 1
		| n /= 0 = 0
```

otra forma de escribir lo mismo:

```haskell
f n | n == 0 = 1
		| otherwise = 0 
```

**Ejemplo función máximo:**

```haskell
f x y | x >= y = x
			| otherwise = y
```

### orden en las guardas

El orden en las guardas es muy importante ya que cuando las condiciones se solapan, el orden cambia el comportamiento de la función.

**Ejemplos:**

Ejemplo 1:

```haskell
f4 n | n >= 3 = 5
		 | n <= 9 = 7

f5 n | n <= 9 = 7
		 | n >= 3 = 5
```

Ejemplo 2:

```haskell
f3 n | n >= 3 = 5
		 | n == 2 = undefined 
		 | otherwise = 8
```

en esta función si n es mayor o igual a 3 el output será  5, si n es igual a 2 el output será undefined y si no cumple con cualquiera de las condiciones previas el output será  8.

No nos interesa que la función devuelva algún valor cuando n == 2 por eso usamos undefined.

## Pattern Matching (**búsqueda de patrones**)

Pattern Matching es una forma de comprobación de una determinada **secuencia** de tokens para la presencia de los componentes de algún patrón.

$f(n)\lbrace 1 \quad \textrm{si} \quad n=0 \\ \qquad \lbrace 0 \quad  \textrm{si no}$

Forma de escribirlo sin pattern matching:

```haskell
f n | n == 0 = 1
		| n /= 0 = 0
```

Misma función pero escrita con pattern matching:

```haskell
f 0 = 1
f n = 0
```

 

- f 0 = 1 significa que para la función f cuando su parámetro (n) es 0 entonces el output es 1.
- f n = 0 significa que para la función f cuando su parámetro (n) es n( ósea cualquier numero ) el output es 0.

### Ejemplos

Ejemplo 3:

![Untitled](Clase%201(23%2074087/Untitled.png)

Sin pattern matching:

```haskell
signo n | n > 0 = 1
				| n == 0 = 0
				| n < 0 = -1
```

Con pattern matching:

```haskell
signo 0 = 0
signo n | n > 0 = 1
				| otherwise = -1
```

Ejemplo 4:

Implementar la función cantidadDeSoluciones, que dados dos números b y c, calcula la cantidad de soluciones reales la ecuación cuadrática:

$X^2+bX+c=0$

```haskell
cantidadDeSoluciones b c | b^2 + 4 * c > 0 = 2
												 | b^2 - 4*c == 0 = 1
												 | otherwise = 0
```

otra forma de resolver:

```haskell
cantidadDeSoluciones b c | d > 0 = 2
												 | d == 0 = 1
												 | otherwise = 0
												 where d = b^2 - 4*c
```

## Tipos de datos

Un tipo de dato es un conjunto de valores a los que se les puede aplicar un conjunto de funciones.

Podemos especificar explícitamente el tipo de datos del dominio y codominio de las
funciones que definimos. A esto lo llamamos dar la signatura de la función. 

No es estrictamente necesario hacerlo, pero suele ser una buena práctica.

### Integer (Int)

Es el tipo de datos que representa a los enteros con las
operaciones aritméticas habituales.

Int  $=  (\mathbb{Z}, \lbrace +, - , *,$ div$,$mod$\rbrace)$

### Float (**Floating-point**) (Float)

Es el tipo de datos que representa a los racionales, con la
aritmética de punto flotante.

Float $=  (\mathbb{Q}, \lbrace+,-,*,/\rbrace )$

### Boolean (Bool)

Representa los valores lógicos.

Bool $=(\lbrace$True, False$\rbrace,\lbrace$&&$,$ || $,$ not $\rbrace)$

- True significa  “verdadero”
- False significa “falso”
- && significa and (y)
- || significa or (o)
- not significa “no esta” o “no”

**Ejemplos:**

Ejemplo 5:

```haskell
maximo :: Int -> Int -> Int
maximo x y | x >= y = x
					 | otherwise = y
```

En la primera linea de código definimos los tipos de datos de los parámetros  y del output separándolos con “flechas” ( `->` ), los primeros 2 Int representan los tipos de datos de los parámetros (x y) y el ultimo define el tipo de dato del output.

Ejemplo 6:

```haskell
esMayorA9 :: Int -> Bool
esMayorA9 n | n > 9 = True
						| otherwise = False
```

Cómo podemos ver en este ejemplo no es necesario que todos los parámetros y el output tengan el mismo tipo de dato.

Ejemplo 7:

```haskell
funcionRara :: Float -> Float -> Bool -> Bool
funcionRara x y z = (x >= y) || z
```

Otras posibilidades, usando pattern matching:

```haskell
funcionRara :: Float -> Float -> Bool -> Bool 
funcionRara x y True = True
funcionRara x y False = x >= y
```

```haskell
funcionRara :: Float -> Float -> Bool -> Bool 
funcionRara _ _ True = True
funcionRara x y False = x >= y
```

los “ _ ” sirven como placeholders los cuales representan parámetros que no nos interesa definir, pero son necesarios así el programa entiende que la función toma 3 parámetros y no 1. 

Esto:

```haskell
funcionRara True = True
```

**No** es lo mismo que esto:

```haskell
funcionRara _ _ True = True
```

ya que el primero toma 1 parámetro la función y en el segundo toma 3 parámetros.

¿Porqué los usamos los “_”en esta situación ? simplemente para ahorrarnos en escribir “x” e “y” ya que no los estamos usando en esa linea de código.

## Palabras reservadas de Haskell (o palabras clave) hasta ahora:

### otherwise

**otherwise** está definido simplemente como **otherwise** **=** **True** y acepta todo. Es muy similar al ajuste de patrones, solo se aceptan si la entrada satisface un patrón, pero las guardas comprueban condiciones booleanas. Si todas las guardas de una función se evalúan a **False** (y no hemos dado otra guarda **otherwise**), la evaluación falla y continuará hacia el siguiente patrón**.** 

**otherwise** normalmente va al final de las guardas.

### undefined

undefined significa “indefinido” o “no definido”, se utiliza cuando no queremos (o no nos interesa) definir algo. En el Ejemplo 2 se ve un caso de esto.

undefined también sirve para situaciones en las cuales escribimos mitad de una función y no la terminamos, pero queremos compilarla para “testear” la función  que escribimos hasta ahora.

### where

Simplemente significa “donde”, lo utilizamos en el Ejemplo 4 para definir “d” y ahorrar espacio.

# Ejercicios

1.  absoluto: calcula el valor absoluto de un número entero.
2. maximoabsoluto: devuelve el máximo entre el valor absoluto de dos números enteros.
3. maximo3: devuelve el máximo entre tres números enteros.
4. algunoEs0: dados dos números racionales, decide si alguno de los dos es igual a 0 (hacerlo
dos veces, una sin usar y otra usando pattern matching).
5. ambosSon0: dados dos números racionales, decide si ambos son iguales a 0 (hacerlo dos
veces, una sin usar y otra usando pattern matching).
6. esMultiploDe: dados dos números naturales, decidir si el primero es múltiplo  del segundo.
7. digitoUnidades: dado un número natural, extrae su dígito de las unidades.
8. diigitoDecenas: dado un nu ́mero natural, extrae su dígito de las decenas.

## Ejercicios Resueltos

[https://github.com/Luloide/Ejercicios-Taller-algebra-I/blob/main/EjerciciosClase1.hs](https://github.com/Luloide/Ejercicios-Taller-algebra-I/blob/main/EjerciciosClase1.hs)

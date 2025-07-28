# Funciones

En R, las funciones son bloques de código reutilizables que permiten realizar tareas específicas. Saber definir y utilizar funciones es fundamental para automatizar análisis, mejorar la organización del código y evitar repeticiones.

En este documento aprenderás cómo utilizar funciones base, cómo definir tus propias funciones, cómo usarlas con vectores y cómo graficar sus resultados.

---

## Funciones base en R

R incluye muchas funciones ya incorporadas (“funciones base”) que facilitan operaciones comunes con números, vectores y otros objetos. Algunas de las más usadas son:

## Potencia

Para elevar un número a una potencia se utiliza el operador `^` o la función `power()`:

```r
2^3          # Resultado: 8
2**3 # Resultado: 8
```

## Raíz cuadrada

Se usa la función `sqrt()`:

```r
sqrt(9)      # Resultado: 3
sqrt(c(4, 9, 16)) # Resultado: 2 3 4
9**(1/2)
```

## Suma de elementos

La función `sum()` calcula la suma total de un vector:

```r
sum(c(1, 2, 3, 4)) # Resultado: 10
```

## Producto de elementos

La función `prod()` calcula el producto de todos los elementos de un vector:

```{r}
prod(c(1, 2, 3, 4)) # Resultado: 24
```

## Suma acumulada

La función `cumsum()` entrega la suma acumulada de un vector:

```{r}
cumsum(c(1, 2, 3, 4)) # Resultado: 1 3 6 10
```

## Promedio (media aritmética)

La función `mean()` retorna el promedio de los valores de un vector:

```r
mean(c(5, 7, 9)) # Resultado: 7
```

## Desviación estándar

La función `sd()` calcula la desviación estándar de un vector numérico:

```r
sd(c(5, 7, 9)) # Resultado: 2
```

## Valor máximo y mínimo

Las funciones `max()` y `min()` retornan el mayor y menor valor de un vector:

```r
max(c(2, 8, 3, 5)) # Resultado: 8
min(c(2, 8, 3, 5)) # Resultado: 2
```

## Longitud de un vector

La función `length()` indica cuántos elementos tiene un vector:

```r
length(c(10, 20, 30, 40)) # Resultado: 4
```

## Redondeo

- `round(x)` redondea al entero más cercano.
- `floor(x)` redondea hacia abajo.
- `ceiling(x)` redondea hacia arriba.

```r
round(3.6)   # Resultado: 4
floor(3.6)   # Resultado: 3
ceiling(3.2) # Resultado: 4
```

Estas funciones base te permiten operar y analizar datos rápidamente sin necesidad de definir funciones propias.

## Ejercicios

1. ¿Cómo puedes calcular el valor de 5 elevado a la 4 en R? Escribe dos formas distintas de hacerlo.
2. ¿Qué resultado obtienes al calcular la raíz cuadrada de los números 16, 25 y 36 en R? Escribe el código y el resultado esperado.
3. Crea un vector con los valores 3, 5, 7 y 9. ¿Cómo calcularías la suma total y el producto de sus elementos usando funciones base?
4. Dado el vector v <- c(1, 3, 6, 10), ¿cómo obtienes la suma acumulada de sus elementos? ¿Qué resultado esperas?
5. ¿Cómo obtendrías el promedio de los números del 1 al 100 en R? Escribe el código.
6. ¿Cuál es la desviación estándar de los números 10, 12, 13, 17 y 20? Usa la función correspondiente.
7. Para el vector c(11, 27, 5, 19), ¿cómo encontrarías el valor máximo y el valor mínimo?
8. ¿Cómo puedes saber cuántos elementos tiene el vector c(2, 4, 6, 8, 10, 12)?
9. Redondea el número 7.65 al entero más cercano, al menor entero y al mayor entero. ¿Qué funciones usas y qué resultados obtienes?
10. ¿Qué sucede si aplicas la función sum() a un vector vacío, como sum(c())? ¿Y la función prod()?


---

## Definir funciones en R

Una función en R es un conjunto de instrucciones agrupadas bajo un nombre, que puede recibir valores de entrada (argumentos), procesarlos y devolver un resultado (output).

La estructura general de una función en R es la siguiente:

```r
nombre_funcion <- function(argumentos) {
  # Cuerpo de la función
  resultado <- ... # Operaciones
  return(resultado)
}
```

## Ejemplo simple

```r
# Una función que suma dos números
sumar <- function(a, b) {
  resultado <- a + b
  return(resultado)
}

sumar(3, 5) # Resultado: 8
```

---

# Funciones que trabajan con vectores

En R, es común trabajar con vectores numéricos. Las funciones pueden procesar estos vectores y devolver resultados útiles.

## Ejemplo 1: Suma de todos los elementos de un vector

```r
suma_vector <- function(vec) {
  suma <- sum(vec)
  return(suma)
}

mi_vector <- c(2, 4, 6, 8)
suma_vector(mi_vector) # Resultado: 20
```

## Ejemplo 2: Calcular el promedio de un vector

```r
promedio_vector <- function(vec) {
  promedio <- mean(vec)
  return(promedio)
}

promedio_vector(c(10, 20, 30)) # Resultado: 20
```

## Ejemplo 3: Función que calcula la desviación estándar de un vector

```r
desviacion_vector <- function(vec) {
  desv <- sd(vec)
  return(desv)
}

desviacion_vector(c(5, 7, 11, 15))
```

---

# Ejemplo: Función definida por el usuario y graficar su resultado

Supongamos que queremos crear una función \( f(x) = x^2 - 2x + 1 \) y graficarla en el intervalo [-5, 5].

## Definir la función

```r
f <- function(x) {
  return(x^2 - 2*x + 1)
}
```

## Crear un vector de valores para x

```r
x <- seq(-5, 5, by = 0.1) # Vector desde -5 hasta 5, de 0.1 en 0.1
y <- f(x)
```

## Graficar la función

```r
plot(x, y, type = "l", col = "blue", lwd = 2,
     main = "Gráfica de f(x) = x^2 - 2x + 1",
     xlab = "x", ylab = "f(x)")
grid()
```

---

# Ejercicios prácticos

1. **Crear una función que reciba un vector numérico y devuelva el valor máximo y mínimo como una lista.**

2. **Definir una función que, dado un vector, devuelva un nuevo vector con cada elemento elevado al cuadrado. Pruébala con el vector c(1, 2, 3, 4, 5).**

3. **Crear una función que calcule la suma acumulada de un vector (usa la función cumsum de R). Grafica la suma acumulada usando plot().**

4. **Define una función g(x) = sin(x) y grafícala en el intervalo [0, 2π].**

5. Construir una función que genere números aleatorios entre cero y uno hasta que la suma de éstos números supere por primera vez el valor de 3. La función debe entregar la cantidad de números aleatorios generados para que se cumpla la condición.

6. Construir una función que, dado un número entero positivo (cota) ingresado por el usuario, genere números aleatorios entre cero y uno hasta que la suma de los números generados exceda por primera vez la cota. La función debe entregar un vector con los números aleatorios, la suma y la cantidad de números aleatorios. Si el usuario no ingresa el valor de la cota, se debe asumir igual a 1.

7. Construya una función que reciba dos números de la recta real y que entregue el punto médio de estos números. El resultado debe ser un mensaje por pantalla.

8. Construya una función que reciba dos números reales a y b, la función debe decir cuál es el mayor de ellos.

9. Escriba una función llamada media que calcule la media muestral de un vector numérico x ingresado a la función.

10. Escribir una función que calcule la velocidad de un proyectil dado que el usuario ingresa la distancia recorrida en Km y el tiempo necesario en minutos. Expresar el resultado se debe entregar en metros/segundo.

---

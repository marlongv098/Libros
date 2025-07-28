# Introducción

En R, las funciones son bloques de código reutilizables que permiten realizar tareas específicas. Saber definir y utilizar funciones es fundamental para automatizar análisis, mejorar la organización del código y evitar repeticiones.

En este documento aprenderás cómo definir funciones, cómo usarlas con vectores, y cómo graficar sus resultados.

---

# ¿Qué es una función en R?

Una función en R es un conjunto de instrucciones agrupadas bajo un nombre, que puede recibir valores de entrada (argumentos), procesarlos y devolver un resultado (output).

La estructura general de una función en R es la siguiente:

```{r}
nombre_funcion <- function(argumentos) {
  # Cuerpo de la función
  resultado <- ... # Operaciones
  return(resultado)
}
```

## Ejemplo simple

```{r}
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

```{r}
suma_vector <- function(vec) {
  suma <- sum(vec)
  return(suma)
}

mi_vector <- c(2, 4, 6, 8)
suma_vector(mi_vector) # Resultado: 20
```

## Ejemplo 2: Calcular el promedio de un vector

```{r}
promedio_vector <- function(vec) {
  promedio <- mean(vec)
  return(promedio)
}

promedio_vector(c(10, 20, 30)) # Resultado: 20
```

## Ejemplo 3: Función que calcula la desviación estándar de un vector

```{r}
desviacion_vector <- function(vec) {
  desv <- sd(vec)
  return(desv)
}

desviacion_vector(c(5, 7, 11, 15))
```

---

# Ejemplo: Función definida por el usuario y graficar su resultado

Supongamos que queremos crear una función $f(x) = x^2 - 2x + 1$ y graficarla en el intervalo [-5, 5].

## Definir la función

```{r}
f <- function(x) {
  return(x^2 - 2*x + 1)
}
```

## Crear un vector de valores para x

```{r}
x <- seq(-5, 5, by = 0.1) # Vector desde -5 hasta 5, de 0.1 en 0.1
y <- f(x)
```

## Graficar la función

```{r}
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

---

Soluciones a los ejercicios

```{r}
# 1. Función que retorna máximo y mínimo
max_min <- function(vec) {
  lista <- list(maximo = max(vec), minimo = min(vec))
  return(lista)
}
max_min(c(7, 3, 12, -2, 0))

# 2. Función que eleva cada elemento al cuadrado
cuadrados <- function(vec) {
  return(vec^2)
}
cuadrados(c(1, 2, 3, 4, 5))

# 3. Suma acumulada y gráfico
suma_acumulada <- function(vec) {
  return(cumsum(vec))
}
valores <- c(1, 2, 3, 4, 5)
suma_cum <- suma_acumulada(valores)
plot(valores, suma_cum, type = "b", main = "Suma Acumulada", xlab = "Elemento", ylab = "Suma acumulada")
grid()

# 4. Gráfica de g(x) = sin(x)
g <- function(x) {
  sin(x)
}
x <- seq(0, 2*pi, by = 0.01)
y <- g(x)
plot(x, y, type = "l", col = "red", main = "g(x) = sin(x)", xlab = "x", ylab = "g(x)")
grid()
```

---

# Conclusión

Las funciones en R son herramientas poderosas para organizar código, procesar datos y graficar resultados. Dominar su definición y uso, especialmente con vectores y gráficos, te permitirá resolver problemas de forma más eficiente y elegante.

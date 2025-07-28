# Introducción R Y RStudio

## ¿Qué es R?

**R** es un lenguaje de programación y entorno de software libre orientado al análisis estadístico y la visualización de datos. Es ampliamente utilizado en ciencia de datos, análisis estadístico, modelado y gráficos. Cuenta con una gran comunidad y miles de paquetes que amplían sus funcionalidades.

## ¿Qué es RStudio?

**RStudio** es un Entorno de Desarrollo Integrado (IDE) para R. Facilita la escritura, ejecución y depuración de código R, al ofrecer una interfaz amigable con consola, editor, visor de variables, salida de gráficos y más.

* Componentes de RStudio [https://www.youtube.com/RStudio](https://www.youtube.com/watch?v=RYV2R-SOa0M&t=576s)

## ¿Por qué usar R y RStudio?

- R está diseñado específicamente para análisis estadístico y visualización.
- RStudio mejora la experiencia de uso con herramientas interactivas.
- Juntos permiten realizar todo el flujo de análisis de datos: importar, transformar, modelar y visualizar.

## Instalación de R y RStudio

* Descarga e instala R desde [https://cran.r-project.org](https://cran.r-project.org)
* Descarga e instala RStudio desde [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)


## Comenzando con R: Conceptos Básicos

### Variables en R

Una variable almacena un valor. Se asigna con el operador `<-`:

```r
a <- 10
b <- 5
```

También es posible usar `=`, aunque en R se prefiere `<-`:

```r
c = 3
```

### Uso de variables

Una vez definidas, las variables pueden usarse en operaciones:

```r
# Suma
total <- a + b
print(total)

# Multiplicación
producto <- a * c
print(producto)
```

### R distingue entre mayúsculas y minúsculas

```r
valor <- 100
Valor <- 200
print(valor)  # imprime 100
print(Valor)  # imprime 200
```

## Tipo de variable

R maneja distintos tipos de datos:

```r
# Numérico
x <- 42
is.numeric(x)  # TRUE

# Texto
nombre <- "Ana"
is.character(nombre)  # TRUE

# Lógico
bandera <- TRUE
is.logical(bandera)  # TRUE
```

## Ejercicios

1. Asigna el valor 20 a una variable llamada `edad` y muestra su contenido.
2. Crea dos variables numéricas y muestra su suma, resta, multiplicación y división.
3. Crea una variable con tu nombre y verifica si es de tipo carácter.
4. Prueba definir dos variables con el mismo nombre pero con diferente capitalización. ¿Qué observas?
5. Escribe una línea de código que determine si un número es lógico.


# Características de R

Una de las características principales de R es su versatilidad, tanto para crear conjuntos de datos como para trabajar con ellos.

## Crear una secuencia

```r
secuencia <- 1:10
print(secuencia)
```

## Crear un vector numérico

```r
notas <- c(3.5, 4.0, 2.8, 5.0, 4.5)
print(notas)
```

## Calcular estadísticas básicas de un vector

```r
mean(notas)       # Promedio
sd(notas)         # Desviación estándar
summary(notas)    # Resumen estadístico
```

## Crear un vector de texto

```r
nombres <- c("Ana", "Luis", "Carlos")
print(nombres)
```

## Combinar vectores en un data frame

```r
edades <- c(23, 25, 30)
personas <- data.frame(Nombre = nombres, Edad = edades)
print(personas)
```

## Acceder a columnas de un data frame

```r
personas$Nombre
personas$Edad
```

## Ejercicios

6. Crea un vector de 5 números decimales y calcula su media.
7. Construye un `data.frame` con dos columnas: una de nombres y otra de edades.
8. Accede a cada columna de ese `data.frame` usando `$`.
9. Utiliza la función summary() sobre el vector de edades y analiza el resultado.
10. Crea un vector lógico que indique si cada persona del data.frame tiene más de 24 años.

## Gráficos básicos en R

Una de las capacidades más potentes de R es su capacidad para generar gráficos de forma sencilla.

### Gráfico de dispersión

```r
x <- 1:10
y <- x^2
plot(x, y, type = "b", col = "blue", main = "Gráfico de x vs x^2", xlab = "x", ylab = "x^2")
```

### Histograma

```r
notas <- c(3.5, 4.0, 2.8, 5.0, 4.5, 3.7, 4.1)
hist(notas, col = "lightblue", main = "Histograma de notas", xlab = "Nota")
```

### Diagrama de cajas (boxplot)

```r
boxplot(notas, main = "Diagrama de cajas de notas", ylab = "Nota")
```


## Ejercicios

11. Crea un gráfico de dispersión de `x` contra `x^2` usando la función `plot()`.
12. A partir de un vector con al menos 10 notas, crea un histograma.
13. Utiliza `boxplot()` para visualizar la distribución de ese vector de notas.




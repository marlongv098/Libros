---
title: "Vectores"
author: "Marlon"
date: "2024-03-17"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Crear vectores

Los vectores se generan en R usando la función c(), que proviene de combine. Los elementos situados dentro del paréntesis tienen que estar separados por comas. Si son caracteres, hay que poner cada elemento entre comillas, y si son lógicos o booleanos hay que escribir TRUE y/o FALSE en mayúsculas y sin comillas. Igual pasa con los vectores numéricos, que no llevan comillas. Veamos estos tres tipos de vectores.

```{r }
v_numerico <- c(1, 3, 5, 7)      # vector numérico
v_texto <- c("a", "b", "c", "d") # vector de texto
v_logico <- c(TRUE, FALSE, TRUE) # vector lógico / booleano
```

## Elementos de un vector

Se pueden relacionar dos vectores a y b con el comando names(). 

## Ejemplo: 

se toman dos vectores uno conteniendo la cantidad de números del 1 al 12. Se puede crear el objeto meses de dos formas. 

```{r}
# También podemos acortar el código anterior poniendo 1:12
meses <- c(1:12)
# Vemos el vector
meses
```

Ahora, para relacionar el vector conformado por números y relacionar a cada numero con los meses del año, se debe realizar la siguiente operación. 

```{r}
names(meses) <- c("Ene", "Feb", "Mar", 
                        "Abr", "May", "Jun", 
                        "Jul", "Ago", "Sep", 
                        "Oct", "Nov", "Dic")

# Vemos nuevamente el vector "orden_meses"
meses
```

## Operaciones entre vectores

Realizar operaciones aritméticas (suma, resta, multiplicación y división) con vectores es muy sencillo. Para ello, se crearan dos vectores con el nombre Vector_1 y Vector_2.

```{r}
V_1 <- c(1, 2, 3, 2, 4, 1)
V_2 <- c(4, 5, 6, 5, 7, 9)

V_1 + V_2 # suma de los dos vectores

V_1 - V_2 # resta de los dos vectores

V_1%*%V_2 # producto escalar
```

## Multiplicación

En la multiplicación se definieron dos operaciones básicas. Multiplicación por escalar y multiplicación escalar. Aunque R realiza la operación de multiplicación componente a componente, esta operación no esta definida en el algebra de vectores.

```{r}

V_P <- V_1 * V_2 # multiplicación de los dos vectores
V_P
sum(V_P)

```

## División

La división entre vectores no es una operación matemática definida en el algebra de vectores, dado que el producto escalar o vectorial de dos vectores podría dar cero y ninguno de los dos vectores tiene que ser cero.  Sin embargo, R realiza la operación división entre vectores dividiendo componente a componente los dos vectores.

```{r}
V_1 / V_2 # división de los dos vectores
```

## Vectorización de operaciones

Existen algunas operaciones al aplicarlas a un vector, se aplican a cada uno de sus elementos. A este proceso le llamamos vectorización.

Las operaciones aritméticas y relacionales pueden vectorizarse. Si las aplicamos a un vector, la operación se realizará para cada uno de los elementos que contiene.

```{r}

V_3 <- c(1,3,4,5,6,7,8,3,4,5,9)
V_3 + 3
V_3 * 3
V_3 %% 3
V_3 > 3
V_3 < 3
V_3 == 3

```

## Asignación de vectores

Vectores pueden ser usados en expresiones aritméticas, en las cuales cada operación es llevada a cabo elemento por elemento.

```{r}
x<-c(1,2,3,4,5)
x

assign("y", c(45.1, 2.9, 9.2, 5.7, 87.2))
y

13:2 -> z
z

a <- c(x,0,y)
a

```

## Aritmetica de vectores

Vectores pueden ser usados en expresiones aritméticas, en las cuales cada operación es llevada a cabo elemento por elemento.

```{r}
y1 <- c(x, 0, x)
y1

v <- 2*x + y + 1 # operaciones entre vectores
v

sum((x-mean(x))^2)/(length(x)-1) # cálculo de la varianza por formula

var(x) # comando base de R
```

## Generación secuencias

Existen diferentes formas de gnerar seceuncias de numeros en R

```{r}
sa<-1:30
sa

s1<-30:1
s1

s2<-2*1:15
s2

n=20

a1 <- 1:n-1
a1

b1 <- 1:(n-1)
b1

seq(-5, 5, by=.2) -> s3
s3

s4 <- seq(length=51, from=-5, by=.2)
s4

s5 <- rep(x, times=5)
s5

s6 <- rep(x, each=5)
s6
```

## Indexación de vectores

Para acceder a posiciones particulares de un vector, se utiliza el operador [ ], dentro de los cuales se indica la(s) posicion(es) que se desea(n) acceder.

```{r}
s7 <- 100:1
s7[25]

s7[56:72]

s7[seq(20,80,by=3)]

s7[-2]

s7[-5]

s7[-1:-3]

s7[-3:-1]
```


## Gráfica de un vector

Representación gráfica de un vector 2D con el comando plot y arrow:

```{r}

plot(3,1, xlim=c(0,5), ylim=c(0,5), xlab="x", ylab="y", lwd=3, ,col='red', bty='n')
arrows(0,0,3,1,col='red')
```

## Grafica de la suma

Como se explica, por ejemplo la suma, entre dos vectores desde una perspectiva cartesiana? Veamos con un ejemplo (en este caso en 2D) utilizando R y los comandos: plot, points y arrow


```{r}
plot(3,1, xlim=c(0,5), ylim=c(0,5), xlab="x", ylab="y", lwd=3, ,col='red', bty='n')
arrows(0,0,3,1,col='red')

# El segundo vector es w = (x = 1, y = 3):
points(1,3,lwd=3,col='blue')
arrows(0,0,1,3,col='blue')

# El vector v + w = (x = 3 + 1, y = 1 + 3):
points(4,4,lwd=3,col='green')
arrows(0,0,4,4,col='green')

# Esta operación de suma se puede ver como:
arrows(1,3,4,4,col='red',lty=3)
arrows(3,1,4,4,col='blue',lty=3)
```

## Funciones dim y length

```{r}
a <- 1:30 # a es un vector con 30 elementos
a; length(a); # se ve el vector y la longitud

dim(a) <- c(6,5); a # Redimensiona el vector, lo pone como una matrix


c <- array(1,c(5,8));c # nuevos objetos llamados matrices dimension 5x8

d <- array(5,c(3,5,2)); d # imprime dos matrices de dimension 3x5
```


## Preguntas

1. Imagina que estás registrando las temperaturas promedio de los primeros 6 meses del año: 15, 18, 20, 23, 27, y 30 grados. Crea un vector que contenga estas temperaturas en R. Luego, añade 2 grados a cada valor del vector para simular el cambio climático. ¿Cómo lo harías?

2. Imagina que estás siguiendo un programa de entrenamiento. Tus tiempos de carrera (en minutos) por día durante una semana son los siguientes: c(35, 30, 28, 27, 26, 25, 24). Crea un vector que almacene estos tiempos. Luego, grafica el progreso usando una línea para visualizar la mejora en los tiempos a lo largo de la semana.

3. Tienes una secuencia de números del 1 al 20 y quieres crear una secuencia de solo los números pares en R. Usa la función seq() para generar esta secuencia. Después, grafica los números pares en el eje x y sus cuadrados en el eje y.

4. Supón que estás analizando el crecimiento de una población en los primeros 12 meses del año, con una cantidad inicial de 100 personas y un crecimiento mensual de 10 personas. Crea un vector que represente la población en cada mes y grafícalo para ver el crecimiento.

5. Para un experimento, necesitas crear un vector que contenga los números del 10 al 100 en intervalos de 10. ¿Cómo lo harías usando la función seq() en R? Luego, suma 5 a cada valor del vector y crea un gráfico que represente el resultado de la operación.

6. Imagina que estás comparando los ingresos semanales de dos trabajadores. Uno gana $400 y recibe un aumento de $50 cada semana. El otro gana $350 y recibe un aumento de $60 cada semana. Crea dos vectores que representen los ingresos de cada trabajador durante 10 semanas. Luego, grafica ambas series de ingresos para comparar su evolución.


7. Tienes los siguientes datos de las ventas mensuales de una tienda en miles de dólares: 50, 60, 70, 55, 80, 90, 85, 95, 100, 110, 120, 130. Crea un vector en R que almacene estos valores y nómbralo ventas. Luego, genera un gráfico de barras que represente estas ventas mensuales. Usa la funcion barplot de R para generar el codigo de barras. 

8. Supón que tienes dos vectores que representan la cantidad de productos vendidos en dos tiendas diferentes a lo largo de una semana: tienda1 <- c(10, 20, 15, 25, 30, 40, 35) y tienda2 <- c(5, 15, 10, 20, 25, 30, 45). Suma los vectores para obtener las ventas combinadas por día. ¿Cómo harías el gráfico de barras para mostrar las ventas diarias de ambas tiendas?
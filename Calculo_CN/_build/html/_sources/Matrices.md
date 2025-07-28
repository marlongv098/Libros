---
title: "Matrices"
author: "CN"
date: "2023-09-25"
output:
  html_document: default
  pdf_document: default
---

## Matrices
Hay varias maneras de definir una matriz en R. Si es una matriz pequeña podemos utilizar la siguiente sintaxis:

```{r}
A=matrix(nrow=3,ncol=3, c(1,2,3,4,5,6,7,8,9),byrow=TRUE); 
A
A_1=matrix(nrow=3,ncol=3, c(1,2,3,4,5,6,7,8,9),byrow=FALSE)
A_1

B_1 <- matrix(c(1,2,3,4,5,6,7,8,9),byrow=TRUE,nrow=3,ncol=3); 
B_1
B_2 <- matrix(c(1,2,3,4,5,6,7,8,9),byrow=FALSE,nrow=3,ncol=3)
B_2


```

Si disponemos de varios vectores de la misma longitud que queremos utilizar como filas (o columnas) de una matriz, podemos utilizar la función rbind() para unirlos por filas, o la función cbind() para unirlos por columnas, como vemos en el siguiente ejemplo:

```{r}
vector1 = c(1,2,3,4)
vector2 = c(5,6,7,8)
vector3 = c(9,10,11,12)
M1 = cbind(vector1,vector2,vector3) # Unimos por columnas
M1  
```

Se pueden seleccionar partes de una matriz utilizando los índices de posición [fila, columna] entre corchetes. El siguiente ejemplo ilustra la forma de hacerlo:

```{r}
A[2,3]   # Se selecciona el valor de la fila 2, columna 3
A[2,]    # Se selecciona la fila 2 completa
A[,3]    # Se selecciona la columna 3 completa
A[1,2:3] # Se seleccionan el segundo y tercer valor de la fila 1
```

## Operaciones con matrices

La función diag() extrae la diagonal principal de una matriz:
```{r}
diag(A)

```

También permite crear matrices diagonales:

```{r}
diag(c(1,2,3,4))
```

La matriz identidad es muy fácil de crear en R. Por ejemplo, la matriz identidad de dimensión 4 es:

```{r}
Id4=diag(1,nrow=4)
Id4
```

Hay que tener cierto cuidado con los operadores aritméticos básicos. Si se suman una matriz y una constante, el efecto es que dicha constante se suma a todos los elementos de la matriz. Lo mismo ocurre con la diferencia, la multiplicación y la división:

```{r}
M = matrix(nrow=2,c(1,2,5,7),byrow=F)
M
M+2
```

Asimismo, si a una matriz se le suma un vector cuya longitud sea igual al número de filas de la matriz, se obtiene como resultado una nueva matriz cuyas columnas son la suma de las columnas de la matriz original más dicho vector.

```{r}
v=c(3,4)
M+v
```

La suma o resta de matrices de la misma dimensión se realiza con los operadores + y -; el producto de matrices (siempre que sean compatibles) se realiza con el símbolo%*%:

```{r}
M+M
M-M
M%*%M
```

Una fuente de posibles errores en el cálculo matricial, cuando se utilizan matrices de la misma dimensión, es utilizar los operadores * y / ya que multiplican (o dividen) las matrices término a término:

```{r}
M*M
M/M
```

## Potencia de una matriz.

R no dispone en su paquete base de una función para calcular la potencia n-ésima de una matriz. No obstante el paquete expm implementa el operador %^% construido con este objetivo. Su uso es muy simple: si queremos calcular la matriz An bastará con utilizar el comando A %^% n. Para que funcione esta instrucción debemos cargar previamente el paquete expm:

```{r}
library(expm)
A_2 = matrix(1:4,nrow=2)
A_2
A_2 %*% A_2
A_2 %^% 2 
A_2 %^% 5
```

## Matriz traspuesta

La traspuesta de una matriz se calcula simplemente con la función t()

```{r}
t(A)
```

## Determinante

El determinante de una matriz cuadrada se calcula mediante la función 
det():
```{r}
det(A)
```

## Sistemas de ecuaciones lineales.

R dispone de la función solve() para resolver sistemas de ecuaciones lineales. En particular, si el sistema a resolver es de la forma $Ax=b$ (donde b podría ser también una matriz), su solución es $x=A^{−1}b$, que en R se obtiene mediante solve(A,b).

```{r}
#A_3 = matrix(nrow=3,ncol=3, c(1,2,3,1,4,6,2,-3,-5),byrow=FALSE)
#b = matrix(c(9,0, 1), byrow=F)
#solve(D,b)
```

## Matriz inversa.
En particular, si b es la matriz identidad, la función anterior devuelve la matriz inversa de A:
```{r}
A = matrix(ncol=3,c(2,4,3,5,7,1,2,2,3),byrow=TRUE)
A
I=diag(1,nrow=3) # Matriz diagonal de dimension 3
B=solve(A,I) # Matriz inversa de A
B
A%*%B
```

Podemos obviar la referencia a la matriz identidad I. Si utilizamos solamente solve(A) obtenemos también la inversa de A:

```{r}
invA =solve(A)
A %*% invA
invA %*% A
```


## Paquete pracma

Reducción de sistemas haciendo uso del paquete pracma. 

```{r}
#install.packages("pracma")
library(pracma)
A <- matrix( c(1,2,3,1,4,6,2,-3,-5),byrow=F,nrow=3,ncol=3)
b <- matrix(c(9,0,1),nrow=3,ncol=1)

rref(cbind(A, b))
```

## Sistemas no cuadrados

```{r}
A <- matrix(c(1,1,1,2,-1,-3), ncol=3, byrow=T)
b <- matrix(c(1,5),ncol=1,byrow=F)
rref(cbind(A,b))
```

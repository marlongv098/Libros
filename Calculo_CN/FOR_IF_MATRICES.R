#programa de matriz R
# Definir las dimensiones de la matriz
n <- 7
m <- 7

# Crear una matriz de ceros de dimensiones n x m
matriz <- matrix(0, n, m)

# Llenar la matriz con los valores deseados
for (i in 1:n) {
  for (j in 1:m) {
    if (i == j || i + j == n + 1) {
      matriz[i, j] <- 1
    }
  }
}

# Imprimir la matriz resultante
print(matriz)



#IMPRIMIR MATRIZ 
# Definir las dimensiones de la matriz
n <- 7  # Puedes ajustar el tamaño de la matriz según tus necesidades
m <- 7

# Crear una matriz de ceros de dimensiones n x m
matriz <- matrix(0, n, m)

# Definir las coordenadas del cuadrado de unos
fila_inicio <- (n - 3) / 2 + 1
fila_fin <- fila_inicio + 2
columna_inicio <- (m - 3) / 2 + 1
columna_fin <- columna_inicio + 2

# Llenar el cuadrado de unos en la matriz
matriz[fila_inicio:fila_fin, columna_inicio:columna_fin] <- 1

# Imprimir la matriz resultante
print(matriz)


# Definir las dimensiones de la matriz
n <- 8
m <- 8

# Crear una matriz de ceros de dimensiones n x m
matriz <- matrix(0, n, m)

# Llenar la matriz con el patrón de ajedrez alternante de 0s y 1s
for (i in 1:n) {
  for (j in 1:m) {
    if ((i + j) %% 2 == 1) {
      matriz[i, j] <- 1
    }
  }
}

# Imprimir la matriz resultante
print(matriz)

# Definir las dimensiones de la matriz
n <- 7
m <- 7

# Crear una matriz de ceros de dimensiones n x m
matriz <- matrix(0, n, m)

# Llenar la matriz con el patrón en forma de cruz de 1s
for (i in 1:n) {
  for (j in 1:m) {
    if (i == j || i + j == n + 1 || i == (n + 1) / 2 || j == (m + 1) / 2) {
      matriz[i, j] <- 1
    }
  }
}

# Imprimir la matriz resultante
print(matriz)


# Solicitar la dimensión de la matriz al usuario
dimension <- as.integer(readline("Ingrese la dimensión de la matriz (por ejemplo, 7 para una matriz 7x7): "))

# Crear una matriz de ceros de dimensiones dimension x dimension
matriz <- matrix(0, dimension, dimension)

# Llenar la matriz con el patrón en forma de cruz de 1s
for (i in 1:dimension) {
  for (j in 1:dimension) {
    if (i == j || i + j == dimension + 1 || i == (dimension + 1) / 2 || j == (dimension + 1) / 2) {
      matriz[i, j] <- 1
    }
  }
}

# Imprimir la matriz resultante
print(matriz)



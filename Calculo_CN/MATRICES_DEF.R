#vectores
a <- 1:30 #a es un vector con 30 elementos
a; length(a)
dim(a) <- c(6,5); a

b <- array(0,10); b
c <- array(1,c(5,8));c
d <- array(5,c(3,5,2)); d

#matrices con sucesiones
a1 <- array(seq(100,300,10),c(5,4)); a1; a1[2,4]
a1[3:5,2:4]
a1[seq(1,5,2),seq(2,4,2)]

#REEMPLAZO POR INDEXADAS
b1 <- array(1:20, dim=c(4,5)); b1
i <- array(c(1:3,3:1), dim=c(3,2)); i
b1[i]
b1[i] <- 0
b1

i1 <- array(c(1:4,3:1), dim=c(3,3)); i1
b[i1]
b1[i1] <- 0
b1
# PRODUCTO MULITPLICAR CADA ELEMENTO DE UN VECTOR POR LOS EKLEMENTOS DE OTRO VECTOR.
a <- array(1:10); b <- array(2:7)
a; b
c <- a%o%b; c
d <- outer(a,b,"*"); d

#PERMUTACIONES
e <- array(1:18,c(6,3)); e
f <- aperm(e,c(2,1)); f

#MULTIPLICACION DE MATRICES
g <- array(1:6,c(2,3)); h <- array(1:12,c(3,4)); k <- g %*% h; k


# Crear dos matrices
matriz1 <- matrix(1:9, nrow = 3, ncol = 3)
matriz2 <- matrix(9:1, nrow = 3, ncol = 3)
matriz1; matriz2
# Sumar las dos matrices
resultado <- matriz1 + matriz2
print(resultado)

# Acceder al elemento en la fila 2, columna 3
elemento <- matriz1[2, 3]
print(elemento)

# Transponer una matriz
matriz_transpuesta <- t(matriz1)
print(matriz_transpuesta)

# Calcular el determinante de una matriz cuadrada
determinante <- det(matriz1)
print(determinante)

install.packages("expm", repos="http://R-Forge.R-project.org")

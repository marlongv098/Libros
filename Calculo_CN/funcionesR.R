suma <- function(x,y) {
  s <- x+y
  s
}
suma(3,5)

x <- 0

S<-function(n){
  while (x<n){
    #print (x)
    x <- x + 1
  }
  sum(x)
}

S(5)

x <- 0
repeat {
  print (x)
  x <- x + 1
  if(x>=10) break;
}

sumaN<-function(x){
  v<-suma(1,x)
  print(v)
}
sumaN(3)

# Definir una función llamada suma que toma dos argumentos y devuelve la suma de ellos
suma <- function(a, b) {
  resultado <- a + b
  return(resultado)
}

# Llamar a la función y almacenar el resultado en una variable
resultado_suma <- suma(5, 3)

# Imprimir el resultado
cat("La suma es:", resultado_suma, "\n")

# Definir una función llamada promedio que toma un vector de números y devuelve el promedio
promedio <- function(numeros) {
  suma <- sum(numeros)
  cantidad <- length(numeros)
  if (cantidad == 0) {
    return(NULL)  # Manejo de casos especiales
  }
  promedio <- suma / cantidad
  return(promedio)
}

# Llamar a la función con una lista de números
numeros <- c(5, 10, 15, 20, 25)
resultado_promedio <- promedio(numeros)

# Imprimir el resultado
cat("El promedio es:", resultado_promedio, "\n")


# tabla frecuencias

generarTablaFrecuencias <-
  function(filas, columnas){
    factorColumnas <- factor(columnas)
    mi = min(filas)-1
    ma = max(filas)
    breaks = seq(mi,ma,
                 length.out=11)
    factorFilas <- factor(cut(filas, breaks))
    tablaFrecuencias = 
      table(factorFilas,factorColumnas)
    tablaFrecuencias
  }

#dispersion
graficarDispersionYCajas <-
  function(x,y){
    windows(5,5)
    par(mfrow=c(2,2))
    plot(x, y, xlab="X", ylab="Y", 
         main="Y vs X", pch=1, col="red")
    plot(x, y, xlab="X", ylab="Y", 
         main="Y vs X", pch=1, col="blue", type="l")
    boxplot(x, main="Boxplot of X", 
            border="red", lwd=2)
    boxplot(y, main="Boxplot of Y", 
            border="red", lwd=2)
  }

# Integral Indefinida y Definida

Puedes obtener la primitiva (integral indefinida) de una función, o la integral definida, usando paquetes de álgebra computacional.

```r
install.packages("Ryacas0") 
```

```r
library(Ryacas0)

x <- Sym("x") # Declarar la variable simbólica
expr <- x^2 + 3*x + 1 # Definir la expresión

Integrate(expr, x) # Integral indefinida (primitiva)
Integrate(expr, x, 0, 2) # Integral definida entre 0 y 2
```

## Integral Definida

En R podemos utilizar la función integrate para calcular integrales. Se puede observar lo facil que los calculos se pueden hacer en el lenguaje. lLa unica dificultad que supone trabajar con R es aprender la semantica del lenguaje.   

$$∫_0^1xdx=\frac{x^2}{2}∣_0^1=1^2−0^2=1$$

```r
integrate(function(x) x, lower = 0, upper = 1)
```


```r
inte <- function(x) x
x1 <- seq(0,1,by = 0.01)
plot(x1, inte(x1),type='l', col = 'black',lwd=2)
polygon(c(0,x1,1),c(0,inte(x1),0), col ='pink')
```

$$∫_0^3 \frac{1}{\sqrt{3-x}}dx$$

```r
integrate(function(x) 1 / sqrt(3 - x), lower = 0, upper = 3)
```

```r
inte <- function(x) 1 / sqrt(3 - x)
x1 <- seq(0,3,by = 0.01)
plot(x1, inte(x1),type='l', col = 'black',lwd=2)
polygon(c(0,x1,1),c(0,inte(x1),0), col ='pink')
```

Integrales con límites infinitos.

```{r}
integrate(function(x) exp(-x), lower = 0, upper = Inf)
```

```r
inte <- function(x) exp(-x)
x1 <- seq(0,100,by = 0.01)
plot(x1, inte(x1),type='l', col = 'black',lwd=2)
polygon(c(0,x1,1),c(0,inte(x1),0), col ='pink')
```
## Integral indefinida


# Cálculo de Derivadas

Si no lo tiene instalado debe instalar el paquete. **"Deriv"**

```r
install.packages("Deriv")
```

```r
library(Deriv)

f<-function(x) 2*x^2+2 # Definir la función
Derivada<-Deriv(f, "x") # Calcular la derivada simbólica
Derivada
```

```r

f <- function(x) x^3 + 2*x^2 + 3*x + 1 # Definir la función
df <- Deriv(f, "x") # Calcular la derivada simbólica
df

df(2)  # Evalúa la derivada en x = 2
```

```r
Deriv(expression(x^2 + sin(x)), "x") # derivar la expresión directamente
```

**otra forma de derivar**

```r
expresion1=expression(x^2)
D(expresion1,"x")
```


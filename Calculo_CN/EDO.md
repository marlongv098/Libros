# Ecuaciones diferenciales

## Librerias

```r
library(deSolve)   #PVI,ESD,EDP y EDO
library(ReacTran) #EDP
##library(bvpSolve) #PVI
library(rootSolve) #EDO
library(PBSddesolve) #DDE
```

## Ecuaciones Diferenciales Ordinarias (EDO)

Las ecuaciones diferenciales ordinarias describen el cambio de una variable de estado $y$ como una función $f$ de una variable independiente $t$ (por ejemplo, tiempo o espacio), de sí mismo y, opcionalmente, un conjunto de otras variables $p$, a menudo llamadas parámetros:

$$y′=\frac{dy}{dt}=f(t,y,p)$$
en ocasiones para dar solución a una EDO se necesitan valores extras, por lo general son condiciones iniciales y/o los llamados valores en la frontera que se describen mas adelante.

## Problemas de Valor Inicial (PVI)

Si en la ecuación diferencial hay una condición extra se les llama problemas de valor inicial por las condiciones iniciales corresponden a información de la función en un punto.(ejemplo: $y(x=0)=0$).

Existen varios algoritmos numéricos usados para resolver estos problemas, entre los cuales tenemos: Método de Euler y el método Runge-Kutta. Otra distinción importante es entre los métodos explícito y métodos implícitos, donde los últimos métodos pueden resolver una clase particular de ecuaciones (llamadas ecuaciones “rígidas”) y los métodos explícitos tienen problemas con estabilidad y eficiencia. La rigidez ocurre, por ejemplo, si un problema tiene componentes con diferentes tasas de variación según la variable independiente. Muy a menudo habrá una compensación entre el uso de métodos explícitos que requieren poco trabajo por paso de integración y métodos implícitos que son capaces de dar pasos de integración más grandes, pero necesita (mucho) más trabajo para un paso.

En R, los problema de valor inicial se resuelven con la función del paquete desolve, cuya implementación nos permite resolver muchas EDO del código vode,las ecuaciones diferenciales algebraicas se resuelven con daspk,todas estas funciones pertenecen a los métodos multipasos y comprenden otros metodos de diferenciación hacia atrás. Los primeros métodos son explícitos, los últimos implícitos. Además, este paquete contiene una implementación de-novo de un solucionador de Runge-Kutta bastante general. Finalmente, el método implícito de Runge Kutta radau ha sido añadido recientemente.

## Ejemplo:

Considere la famosa ecuación de van der Pol, que describe un oscilador no conservativo con amortiguamiento no lineal y que fue desarrollado originalmente para circuitos eléctricos que emplean tubos de vacío. La oscilación se describe mediante una EDO de segundo orden:

$$z″−μ(1−z^2)z′+z=0$$
Tal sistema se puede reescribir rutinariamente como un sistema de dos EDO de 1er orden, si sustituimos $y_1=z$.
$$y_1=z −−− Derivando --- y_{1}'=z′=y_2 −−− Derivando---z″=y_{2}'$$
Escribimos nuestro sistema de EDO.

$$y_{1}'=y_2$$
$$y_{2}'=μ(1−y^{2}_{1})y_2−y_1$$

Hay un parámetro, $μ$, y dos diferenciales variables, $y_1$ e $y_2$ con valores iniciales (en $t=0$):
$$y_1(t=0)=2$$
$$y_2(t=0)=0$$
La ecuación de van der Pol se usa a menudo como prueba problema para los solucionadores de ODE, ya que, para μ grandes, su dinámica consiste en partes donde la solución cambia muy lentamente, alternando con regiones de muy agudo cambios. Esta “rigidez” hace que la ecuación sea bastante desafiante de resolver.

En R, este modelo se implementa como una función de van der Pol(vdpol) cuyas entradas son el tiempo actual (t), los valores de las variables de estado (y) y los parámetros (mu); la función devuelve una lista con como primer elemento el derivados, concatenados.



```r
vdpol <- function(t,y,mu){list(c(y[2],mu*(1-y[1]^2)*y[2]-y[1]))} #Escritura del sistema
```

Después de definir la condición inicial del estado variables (c_inicial), el modelo se resuelve y la salida escrito en puntos de tiempo (tiempos) seleccionados, usando la función de integración ode de Solve. La rutina predeterminada lsoda, que ode invoca automáticamente cambia entre métodos rígidos y no rígidos, dependiendo del problema. Ejecutamos el modelo para una rigidez típica (mu = 1000) y no rígido (mu = 1) situación:

```r
library(deSolve)
c_inicial <- c(y1 = 2, y2 = 0)   #Valores iniciales 
rigido <- ode(y = c_inicial, func = vdpol,times = 0:3000, parms = 1000)
no_rigido <- ode(y = c_inicial, func = vdpol,times = seq(0, 30, by = 0.01),parms = 1)
```

El modelo devuelve una matriz, de clase deSolve, con en su primera columna los valores de tiempo, seguido de los valores de las variables de estado:

```r
head(rigido, n = 3)
head(no_rigido, n = 3)
```

Las cifras se generan utilizando el método de trazado S3 para objetos de la clase deSolve:

```r
plot(rigido, type = "l", which = "y1",lwd = 2,col='blue', ylab = "y",main = "PVI EDO, Rigido")

plot(no_rigido, type = "l", which = "y1",lwd = 2,col='blue', ylab = "y",main = "PVI EDO,No Rigido")
```


# Ejemplos DE METAPOBLACIONES: 

DOS TIPOS DE METAPOBLACIONES: colección de sitios conectados por dispersión y cada uno sujeto de extinción. Ambos modelos  calculan la proporción de sitios que están ocupados.

* Una población estructurada espacialmente: población cerrada donde los individuos ocupan sitios en un contexto espacial implícito. un sitios es ocupado por un individuo. Cuanto más sitios estén ocupados, menor será la chance de que un propágulo alcance un sitio desocupado. Los sitios se liberan al morir los individuos.

* Metapoblación: población de poblaciones. Cada sitio es una localización que contiene o no una población. La metapoblación es cerrada (existe un número finito de sitios que puede intercambiar migrantes).
  
se asume que todos los sitios presentan iguales tasas. La siguiente herramienta matemática describe nuestros dos tipos de modelos. consideraremos cómo la tasa total de colonización C y extinción E influye en la tasa de cambio p, la proporción de sitios que está ocupado 

$$\frac{dp}{dt}=C-E$$.

permutaciones de cómo representar las tasas de colonización y extinción.
 
# Modelo de Levins

Modelo de Levins
 
Levins. modelo de Levins clásico: $$\frac{dp}{dt}=c_i*p*(1-p)-e*p$$

```r
levins <- function(t, y, parms) { p <- y[1]; with(as.list(parms), { dp <- ci * p * (1 - p) - e * p; return(list(dp)) }) }
  library(deSolve); prms <- c(ci = 0.15, e = 0.05); Initial.p <- 0.01; out.L <- data.frame(ode(y = Initial.p, times = 1:100, func = levins, parms = prms))
  plot(out.L[, 2] ~ out.L[, 1], type = "l", ylim = c(0, 1), ylab = "p", xlab = "time")

function (t, y, parms)
  {
  p <- y[1]
  with(as.list(parms), {  dp <- ci * p * (1 - p) - e * p;  return(list(dp))  })
}

library(deSolve)
p <- c(ci=.1, e=0.01)
time <- 1:10
initialN <- 0.3
out <- ode(y=initialN, times=time, func=levins, parms=p)
plot(time, out[,-1], type='l')
```

# Modelo Gotelli. 

lluvia de propágulos o modelo isla-continente de Gotelli: $$\frac{dp}{dt}=ci*(1-p)-e*p$$  los propáculos pueden venir de fuera de la colección de sitios que se monitorizan si la colección de sitios no está cerrada. Si asumimmos que la colección de sitios tiene lluvia continua de propáculso desde fuentes externas y solo estos propágulos son importantes, asumimos un flujo constante de propágulos que no dependen de la proporción p y la extinción solo es mediada por la proporción de sitios ocupados, y tiene una tasa constante por sitio.

```r
gotelli <- function(t, y, parms) { p <- y[1]; with(as.list(parms), { dp <- ce * (1 - p) - e * p; return(list(dp)) }) }
``` 

Utilizando el paquete “deSolve” la simulación se reduce a:


```r
function (t, y, parms)
  {
  p <- y[1]
  with(as.list(parms), {dp <- ce * (1 - p) - e * p; return(list(dp))})
  }
library(deSolve)
p <- c(ce=.1, e=.01)
time <- 1:10
initialN <- .3
out <- ode(y=initialN, times=time, func=gotelli, parms=p)
plot(time, out[,-1], type='l')
```

 

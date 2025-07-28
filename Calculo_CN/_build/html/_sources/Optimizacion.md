---
title: "OPTIMIZACION"
author: "CN"
date: "2024-04-17"
output: html_document
---

# Programación Lineal

## Ejemplo

TOYCO arma tres juguetes: trenes, camiones y coches, con tres operaciones. Los límites diarios de tiempo disponible para las tres operaciones son 430, 460 y 420 minutos, respectivamente, y las utilidades por tren, camión y coche de juguete son $3, $2 y $5, respectivamente. Los tiempos de armado por tren, en las tres operaciones son 1, 3 y 1 minutos, respectivamente. Los tiempos respectivos por camión y por coche son (2, 0, 4) y (1, 2, 0) minutos (un tiempo de cero indica que no se usa la operación).

### Paquete lpSolve

```{r}

library('lpSolve')
```

### Función Objetivo

$$𝑚𝑎𝑥 𝑧=3𝑥_1+2𝑥_2+5𝑥_3$$

### Sujeto a restricciones
$$x_1+2𝑥_2+𝑥_3≤430$$
$$3𝑥_1+2x_3≤460$$
$$𝑥_1+4𝑥_2≤420$$
$$𝑥_1,𝑥_2≥0$$

### Definiendo los límites

```{r}
obj.fun <- c(3,2,5)
restricciones <- matrix(c(1, 2, 1, 
                          3, 0, 2,
                          1, 4, 0),
                          nrow=3, byrow = TRUE)
direccion <- c("<=", "<=", "<=")
rhs <- c(430, 460, 420)
```
### Resolviendo el modelo
```{r base}
solucion <- lp("max", obj.fun, restricciones, direccion, rhs, compute.sens = TRUE )
solucion$status
```
### Obtención de solución
```{r}
solucion$objval

solucion$solution

optimo <- solucion$solution
names(optimo) <- c("x1","x2","x3")
print(optimo)

print(paste("Ganancia Total: ", solucion$objval, sep=""))

solucion$constraints

solucion$duals
```

## Ejercicios

* Una compañía fabrica y venden dos modelos de lámpara L1 y L2. Para su fabricación se necesita un trabajo manual de 20 minutos para el modelo L1 y de 30 minutos para el L2; y un trabajo de máquina de 20 minutos para el modelo L1 y de 10 minutos para L2. Se dispone para el trabajo manual de 100 horas al mes y para la máquina 80 horas al mes. Sabiendo que el beneficio por unidad es de 15 y 10 euros para L1 y L2, respectivamente, planificar la producción para obtener el máximo beneficio.

* Una empresa decide, por el día del trabajador, llevar de paseo a la playa a 400 trabajadores (por lo menos). Para ello contrata a una compañía de transporte, la cual dispone de autobuses para 60 pasajeros y microbuses para 20 pasajeros. El precio de alquiler de cada autobús es de 250€ y de cada microbús de 200€. La compañía de transporte solo dispone ese día de 8 choferes profesionales. ¿Qué número de autobuses y microbuses deben contratarse para que el costo sea mínimo?

* Con el comienzo del curso se va a lanzar unas ofertas de material escolar. Unos almacenes quieren ofrecer 600 cuadernos, 500 carpetas y 400 bolígrafos para la oferta, empaquetándolo de dos formas distintas; en el primer bloque pondrá 2 cuadernos, 1 carpeta y 2 bolígrafos; en el segundo, pondrán 3 cuadernos, 1 carpeta y 1 bolígrafo. Los precios de cada paquete serán 6:5 y 7 €, respectivamente. ¿Cuántos paquetes le conviene poner de cada tipo para obtener el máximo beneficio?





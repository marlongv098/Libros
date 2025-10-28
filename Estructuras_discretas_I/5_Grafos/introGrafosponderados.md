# Introducción a los Grafos Ponderados

**¿Qué son los grafos ponderados?**

Los grafos ponderados son aquellos en los que se asigna un número (peso) a cada una de sus aristas. Estos pesos pueden representar distintas magnitudes como distancia, tiempo, costo o capacidad.

---

**¿Para qué se utilizan los grafos ponderados?**

Los grafos ponderados se usan en múltiples contextos, por ejemplo:

- Redes informáticas, donde los pesos representan los costes de comunicación, los tiempos de respuesta o la distancia entre equipos.  
- Sistemas de transporte, como los vuelos de una línea aérea, donde los pesos pueden representar costos, tiempos de vuelo o distancias.

![Intro Ponderados_1](/5_Grafos/3_Dijsktra/Images/g1.png)
![Intro Ponderados_2](/5_Grafos/3_Dijsktra/Images/g2.png)
![Intro Ponderado_3](/5_Grafos/3_Dijsktra/Images/g3.png)

---

## Definición formal de un grafo simple ponderado

- Un grafo ponderado es aquel en el que cada arista tiene asociado un número real llamado peso. Se dice que $G$ es un grafo ponderado si tiene asociada una función  

  $$
  W : E \rightarrow \mathbb{R}
  $$  

  llamada función de ponderación.

- La imagen de cada arista determinada por los vértices $v_i$ y $v_j$ se llama **peso de la arista** y se denota por $W_{ij}$.  

- Sea $G = (V, E)$ un grafo ponderado finito tal que  
  
  $$
  V = \{v_1, \dots, v_n\}
  $$

- Se denomina matriz de pesos del grafo $G$ a la matriz $n \times n$  
  
  $$
  W = [a_{ij}]
  $$  
  
  tal que

  $$
  a_{ij} =
  \begin{cases}
  w_{ij}, & \text{si } \{v_i, v_j\} \in E, \\
  \infty, & \text{en caso contrario.}
  \end{cases}
  $$

- Es decir, se coloca el valor del peso cuando exista, y el símbolo $\infty$ cuando no exista tal arista.

---

**¿Cuál es uno de los problemas más frecuentes en los grafos ponderados?**

* Uno de los problemas más comunes consiste en determinar un camino de longitud mínima entre dos vértices de una red.

* La longitud de un camino en un grafo ponderado se define como la suma de los pesos de las aristas que lo componen.

---

**¿Qué puede representar el camino más corto en ejemplos reales?**

El camino más corto puede representar distintas medidas según el contexto:

- La distancia más corta en kilómetros o millas entre dos ciudades.  
- El menor tiempo de viaje entre una ciudad y otra.  
- El menor costo de transporte o conexión entre nodos o ciudades.


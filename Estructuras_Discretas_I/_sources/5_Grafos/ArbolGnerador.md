# Árbol generador y Árbol generador mínimo

## Árbol generador

**¿Qué es un árbol generador?**

Sea $G$ un grafo simple. Un árbol generador (también llamado árbol recubridor o árbol de expansión) de $G$ es un subgrafo de $G$ que:
- Es un árbol (conexo y sin ciclos).
- Contiene todos los vértices de $G$.

**Propiedades**

- Un grafo simple que admite un árbol generador debe ser conexo, pues en el árbol generador existe un camino entre cualquier par de vértices.  
- Todo grafo simple conexo tiene al menos un árbol generador.

**Ejemplo**

![Arbol generador](/5_Grafos/5_Prim/Images/spanning.png)

**¿Cómo se obtiene un árbol generador?**

- Puede construirse ejecutando un DFS o un BFS sobre $G$ y tomando las aristas de descubrimiento.

---

## Árbol generador mínimo (MST)

**Definición**

Un árbol generador mínimo (MST, por sus siglas en inglés) de un grafo ponderado es un árbol generador cuya suma de pesos de las aristas es mínima entre todos los árboles generadores posibles.

**¿Para qué sirve?**

- Para minimizar costos cuando se desea conectar todos los nodos de una red.  
- Ejemplo: una compañía desea construir una red de comunicaciones para conectar 5 centros informáticos.  
  - Cada pareja de centros debe estar enlazada por una línea (posible arista).
  - El peso en cada arista representa el costo mensual del alquiler de la línea.

## Modelado del problema

- Vértices: centros informáticos.
- Aristas: posibles líneas de comunicación.
- Pesos: coste mensual del alquiler de cada línea.

![Grafo costos](/5_Grafos/5_Prim/Images/spanning1.png)

El objetivo es elegir las aristas que conecten todos los centros con costo total mínimo. La solución es un árbol generador mínimo:

![Arbol generador minimo](/5_Grafos/5_Prim/Images/spanning3.png)

---

# Algoritmos para árboles generadores mínimos

**¿Cómo construir árboles generadores de peso mínimo?**  

Con dos algoritmos voraces muy conocidos:

- **Algoritmo de Prim**  
- **Algoritmo de Kruskal**
- Un **algoritmo voraz** realiza en cada paso una elección localmente óptima. Que cada paso sea óptimo no garantiza en general que la solución final sea óptima; sin embargo, **Prim** y **Kruskal** **sí** producen soluciones óptimas para el MST.

---


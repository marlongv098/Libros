# Algoritmo de Prim

## Idea general

- Inicia desde cualquier vértice y va creciendo un árbol:

  - En cada paso añade la arista de menor peso que conecta un vértice dentro del árbol con uno fuera del árbol (evitando ciclos).

- Finaliza cuando se han añadido $n-1$ aristas (siendo $n$ el número de vértices).

## Pseudocódigo (boceto)

![Prim pseudo](/5_Grafos/5_Prim/Images/prim.png)

## Consideraciones

- Si hay empates de peso, la elección de la arista no está determinada; para hacerlo determinista, ordena previamente las aristas por peso (y por un criterio secundario reproducible).  
- Puede haber más de un MST en un grafo simple, conexo y ponderado.

### Ejemplo de seguimiento

![Grafo inicial](/5_Grafos/5_Prim/Images/spanning1.png)
![Evolucion MST](/5_Grafos/5_Prim/Images/spanning2.png)

## Prim con cola de prioridad

![Prim colaPrioridad](/5_Grafos/5_Prim/Images/spanning1.png)

## Más pasos del ejemplo

![Ejemplo 1](/5_Grafos/5_Prim/Images/sp1.png)
![Ejemplo 2](/5_Grafos/5_Prim/Images/sp2.png)
![Ejemplo 3](/5_Grafos/5_Prim/Images/sp3.png)
![Ejemplo 4](/5_Grafos/5_Prim/Images/sp4.png)
![Ejemplo 5](/5_Grafos/5_Prim/Images/sp5.png)
![Ejemplo 6](/5_Grafos/5_Prim/Images/sp6.png)
![Ejemplo 7](/5_Grafos/5_Prim/Images/sp7.png)




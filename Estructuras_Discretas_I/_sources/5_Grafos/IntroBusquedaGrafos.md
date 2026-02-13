# Búsquedas en grafos

## Introducción

**¿Qué es un recorrido?**

* Es un procedimiento sistemático de exploración de un grafo mediante la visita a todos sus vértices y aristas.

**¿Cuándo un recorrido es eficiente?**

* Un recorrido es eficiente si visita todos los vértices y aristas en un tiempo proporcional a su número, es decir, en tiempo lineal.

---

**¿Cuál es el interés de las búsquedas en grafos?**

- Permiten realizar recorridos parciales en grafos infinitos o tan grandes que resultan inmanejables.  
- Facilitan buscar un elemento en un grafo a partir de un vértice de origen.

<p align="center">
  <img src="graph1.png" alt="Grafo ejemplo" width="400"/>
</p>

---

## Tipos de búsquedas en grafos

1. **Búsqueda ciega o sin información**

- No utiliza información sobre el problema.  
- Normalmente, se realiza una **búsqueda exhaustiva**.

2. **Búsqueda heurística**

- Utiliza información sobre el problema, como: costos, distancias o pesos.  
- Se posee información valiosa que orienta la búsqueda.

---

**¿En qué consiste una búsqueda ciega?**

- La búsqueda consiste en escoger uno de los nodos posibles.  
- Si hay varios nodos que se pueden expandir, la elección de cuál se expande primero se hace según una estrategia de búsqueda.  
- El proceso de búsqueda se concibe como la construcción de un recorrido del grafo.  
- Las técnicas se diferencian en el orden en que expanden los nodos.

---

## Estrategias de búsqueda

**Por extensión o amplitud (Breadth-First Search)**

- Se visitan primero el **origen** y luego todos sus **vecinos directos**, antes de avanzar a niveles más profundos.

**Por profundidad (Depth-First Search)**

- Se expande un nodo hasta que no se pueda más y luego se regresa para explorar otras ramas.

---


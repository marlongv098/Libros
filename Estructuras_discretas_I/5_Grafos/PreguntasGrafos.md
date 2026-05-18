# Recorridos sobre Grafos

## Algoritmos: BFS · DFS · Dijkstra

---

## Pregunta 1 — Ejecución y trazabilidad (BFS)

![BFS](/5_Grafos/1_BFS/Images/gr.png)

Dado el siguiente grafo no dirigido con vértices `{r, s, t, u, v, w, x, y}` y listas de adyacencia según la Figura 22.3 del texto:

```
r — s    r — v    s — w    w — t    w — x
t — u    t — x    x — u    x — y    u — y
```

* **a)** Ejecuta `BFS(G, s)` paso a paso. Para cada vértice alcanzable indica:
   - El valor de `v.d` (distancia mínima desde la fuente `s`)
   - El predecesor `v.π`
   - El conjunto de **tree edges** que forman el árbol BFS resultante

* **b)** El Teorema 22.5 garantiza que `v.d = δ(s, v)` al terminar BFS. Explica en qué paso del algoritmo se establece `v.d` y por qué ese valor ya no cambia.

* **c)** ¿Puede el **árbol BFS** obtenido variar si se reordena la lista de adyacencia de algún vértice? ¿Varían también las distancias `d`? Justifica apoyándote en el Ejercicio 22.2-5.

---

## Pregunta 2 — Timestamps y clasificación de aristas (DFS)

![DFS](/5_Grafos/2_DFS/Images/DFS_ejercicio.png)

Dado el grafo dirigido con vértices `{q, r, s, t, u, v, w, x, y, z}`:

* **a)** Ejecuta `DFS(G)` asumiendo **orden alfabético** tanto en el ciclo principal como en cada lista de adyacencia. Para cada vértice registra los timestamps `v.d` (descubrimiento) y `v.f` (finalización).

* **b)** Clasifica **cada arista** del grafo en una de las cuatro categorías definidas por DFS:

| Tipo | Condición sobre timestamps | Color del destino al explorar |
|------|---------------------------|-------------------------------|
| **Tree edge** | `u.d < v.d < v.f < u.f` | WHITE |
| **Back edge** | `v.d ≤ u.d < u.f ≤ v.f` | GRAY |
| **Forward edge** | `u.d < v.d < v.f < u.f` (no tree) | BLACK |
| **Cross edge** | `v.d < v.f < u.d < u.f` | BLACK |

 **c)** ¿Qué tipo de arista **nunca aparece** en un DFS sobre un grafo **no dirigido**?.

---

## Pregunta 3 — BFS vs. DFS: complejidad y estructura

* **a) Representación por matriz de adyacencia.** Ambos algoritmos tienen complejidad `Θ(V + E)` sobre listas de adyacencia. ¿Qué sucede con esa complejidad si el grafo se representa con **matriz de adyacencia**?
   - Demuéstralo para BFS.
   - Argumenta el caso análogo para DFS.

* **b) Árbol vs. Bosque.** BFS produce un único árbol BFS desde la fuente `s`. DFS puede producir un **bosque** de árboles. ¿A qué se debe esta diferencia estructural? ¿Bajo qué condición sobre el grafo G garantiza DFS producir un único árbol?

* **c) Detección de bipartición.** ¿Cuál de los dos algoritmos usarías para determinar si un grafo no dirigido es **bipartito**? Describe el criterio de clasificación de vértices en dos conjuntos y justifica por qué BFS es la elección natural. **Pista:** Un grafo es bipartito si y sólo si no contiene ciclos de longitud impar.

---

## Pregunta 4 — De BFS a Dijkstra: caminos mínimos con pesos

BFS computa distancias mínimas **en número de aristas** en grafos no ponderados. El algoritmo de Dijkstra generaliza esta idea a grafos con **pesos no negativos** en las aristas.

* **a) Contraejemplo.** Construye un grafo dirigido con **4 vértices** y pesos distintos en sus aristas donde BFS devuelva una ruta con menor número de saltos pero mayor costo que la ruta óptima en peso. ¿Cuál es la raíz del problema?

* **b) Invariante de Dijkstra.** El algoritmo mantiene un conjunto `S` de vértices con distancia definitiva y una **cola de prioridad mínima** `Q`. Describe el invariante de ciclo que garantiza la corrección y argumenta por qué la condición de **pesos no negativos** es indispensable. ¿Qué falla exactamente si existe una arista `(u, v)` con peso negativo?

* **c) Análisis de complejidad.** Compara las siguientes variantes y explica en qué escenario (grafo **disperso** vs. **denso**) conviene cada una:

| Variante | Complejidad |
|----------|-------------|
| BFS (no ponderado) | `O(V + E)` |
| Dijkstra con array simple | `O(V²)` |
| Dijkstra con min-heap binario | `O((V + E) log V)` |
| Dijkstra con heap de Fibonacci | `O(V log V + E)` |

* **d) Relación con BFS.** Explica concretamente qué estructura de datos reemplaza a la **cola FIFO** de BFS en Dijkstra y cómo ese cambio generaliza el algoritmo de grafos no ponderados a ponderados.

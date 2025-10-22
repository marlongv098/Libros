# DFS (Búsqueda en Profundidad)

**¿Qué es el DFS?**

- El DFS o *búsqueda en profundidad* es un algoritmo que permite recorrer todos los nodos de un grafo o árbol de manera ordenada, pero no uniforme.  
- Expande un nodo hasta que no se pueda más y regresa.

## Intuición del DFS

- Su funcionamiento consiste en ir expandiendo todos y cada uno de los nodos que va localizando, de forma recursiva, en un camino concreto.  
- Cuando ya no quedan más nodos que visitar en dicho camino, regresa y repite el mismo proceso con los **hermanos** del nodo ya procesado.

---

## Estrategia del DFS

- Como su nombre lo indica, busca cada vez más profundo en el grafo, mientras sea posible.  
- Explora las aristas desde el vértice $v$ descubierto más recientemente y que aún tiene aristas sin explorar.  
- Cuando todas las aristas de $v$ han sido exploradas, la búsqueda se devuelve para continuar con los vértices anteriores.  
- Este proceso continúa hasta que se descubran todos los vértices alcanzables desde el vértice original.  
- Si aún existen vértices sin visitar, DFS selecciona alguno de ellos como nuevo origen y repite la búsqueda.

---

## Grafo de predecesores en DFS

- Siempre que DFS descubre un vértice $v$ durante el escaneo de la lista de adyacencia de un vértice $u$ ya descubierto, se registra este evento estableciendo el atributo de predecesor:  
  $$v.π = u$$

- A diferencia del BFS (que genera un único árbol BF), el subgrafo de predecesores en DFS puede estar compuesto por **varios árboles DF**, ya que la búsqueda puede repetirse desde múltiples orígenes.

---

## Definición formal del subgrafo de predecesores

* Sea un grafo $G = (V, E)$ con vértice origen $s$. Se define el subgrafo de predecesores $G_{π}$ como: $G_{π} = (V, E_{π})$ donde

$$
E_{π} = \{ (v.π, v) \mid v \in V \wedge v.π \neq NIL \}
$$

* El grafo de predecesores $G_{π}$ producido por DFS forma un **bosque DF**, compuesto por varios **árboles DF**.

---

## Seguimiento del progreso del DFS

- Como en BFS, DFS colorea los vértices durante la búsqueda para indicar su estado.  
- Cada vértice comienza *blanco*, pasa a *gris* cuando es descubierto, y se torna *negro* cuando su lista de adyacencia ha sido completamente examinada.

| Color | Significado |
|--------|-------------|
| Blanco | No descubierto |
| Gris | Descubierto, pero con vecinos sin explorar |
| Negro | Todos sus vecinos han sido explorados |

- Esta técnica garantiza que cada vértice termine exactamente en un árbol DF y que estos árboles sean disjuntos.

---

## Información adicional generada por DFS

- DFS asigna **timestamps (marcas de tiempo)** a cada vértice.  
- Cada vértice $v$ tiene dos marcas de tiempo:

| Atributo | Descripción |
|-----------|-------------|
| $v.d$ | Momento en que $v$ se descubre por primera vez |
| $v.f$ | Momento en que finaliza el examen de la lista de adyacencia de $v$ |

- Estas marcas de tiempo proveen información importante acerca de la estructura del grafo y se utilizan para razonar sobre el comportamiento del DFS.

---

## Suposiciones antes de presentar el algoritmo

- El grafo de entrada $G = (V, E)$ se representa mediante listas de adyacencia.  
- Cada vértice tiene los siguientes atributos:  
  - `u.color`: color del vértice  
  - `u.π`: predecesor  
  - `u.d`: tiempo de descubrimiento  
  - `u.f`: tiempo de finalización  
- Los timestamps son enteros entre $1$ y $2|V|$, ya que hay un evento de descubrimiento y uno de finalización por cada vértice.  
- Para cada vértice $u \in V$ se cumple $u.d < u.f$.  
- La variable `tiempo` es **global** y controla las marcas de tiempo.  
- El grafo $G$ puede ser **dirigido o no dirigido**.

---

## Pseudocódigo del DFS

<p align="center">
  <img src="dfs.png" alt="Pseudocódigo DFS" width="500"/>
</p>
![DFS](/5_Grafos/2_DFS/Images/dfs.png)

---

## Ejemplo visual del funcionamiento del DFS


![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df2.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df3.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df4.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df5.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df6.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df7.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df8.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df9.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df10.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df11.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df12.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df13.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df14.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df15.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df16.png)
![DFS Ejemplo 1](/5_Grafos/2_DFS/Images/df17.png)


---

## Complejidad temporal

* $O(V + E)$

Donde:

- $V$ = número de vértices  
- $E$ = número de aristas

---

## Propiedades importantes del DFS

### 1. Estructura del bosque DF

- El subgrafo de predecesores $G_π$ forma un bosque de árboles DF. La estructura de estos árboles refleja exactamente las llamadas recursivas al procedimiento `DFS-VISIT`.

  * $u = v.π$ si y solo si `DFS-VISIT(G, v)` fue llamado durante la exploración de la lista de adyacencia de $u$.
  
  * $v$ es descendiente de $u$ si y solo si se descubre durante el tiempo en que $u$ es gris.

### 2. Propiedad de paréntesis

- Los tiempos de descubrimiento y finalización tienen una estructura de paréntesis bien formada.  
- Si representamos el descubrimiento de un vértice $u$ con “(u” y su terminación con “u)”, la secuencia completa forma una expresión correctamente anidada.

<p align="center">
  <img src="par1.png" alt="Paréntesis DFS" width="300"/>
</p>

---

## Clasificación de aristas

DFS permite clasificar las aristas en cuatro tipos:

| Tipo de arista | Descripción |
|----------------|--------------|
| **Aristas de descubrimiento** | Conducen al descubrimiento de nuevos vértices. También se llaman aristas de árbol. |
| **Aristas de retorno** | Conducen a vértices antecesores ya visitados en el árbol. |
| **Aristas de avance** | Conducen a vértices descendientes en el árbol. |
| **Aristas de cruce** | Conducen a vértices que no son ancestros ni descendientes o que pertenecen a distintos árboles DF. |

<p align="center">
  <img src="arist.png" alt="Clasificación de aristas" width="400"/>
</p>

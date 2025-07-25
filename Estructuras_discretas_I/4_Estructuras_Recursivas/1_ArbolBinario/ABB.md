# Arboles Binarios

**¿Por qué son importantes los árboles binarios?**

- Operaciones básicas como insertar, borrar y buscar toman un tiempo proporcional a la **altura** del árbol.
- Para un árbol binario completo con $n$ nodos, las operaciones básicas toman $\Theta(\log n)$.
- Si el árbol se construye como una cadena lineal de $n$ nodos, tomarán $\Theta(n)$.

---

**¿Qué es un árbol de búsqueda binaria?**

- Es un árbol binario en el cual se cumple que para cada nodo $x$:
  - Los nodos del subárbol izquierdo son **menores o iguales** a $x$.
  - Los nodos del subárbol derecho son **mayores o iguales** a $x$.

![Árbol de búsqueda binaria](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb1.png)

---

**¿Qué propiedad debe cumplir?**

- Sea $x$ un nodo del árbol:
  - Si $y$ es un nodo en el subárbol izquierdo de $x$, entonces $key[y] \leq key[x]$.
  - Si $y$ es un nodo en el subárbol derecho de $x$, entonces $key[y] \geq key[x]$.

![Propiedad árbol BST](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb1.png)


**¿Cuál es otra característica del árbol de búsqueda binaria?**

Si son recorridos **en inorden**, producen una lista de las claves **ordenada ascendentemente**.

![Recorrido inorden](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb6.png)


**¿Por qué son importantes?**

- Permiten operaciones como insertar, borrar y buscar en tiempo proporcional a la altura del árbol.
- En un árbol binario **completo** con $n$ nodos:  
  ⮞ Tiempo de operación: $Θ(log n)$
- En un árbol **degenerado** (como una lista):  
  ⮞ Tiempo de operación: $Θ(n)$

**¿Qué es un Árbol de Búsqueda Binaria?**

- Es un árbol binario donde, para cada nodo $x$:
	- Todos los nodos del subárbol izquierdo tienen claves $≤ x$
	- Todos los nodos del subárbol derecho tienen claves $≥ x$


- **Propiedad estructural**:
	- Sea $x$ un nodo del árbol.
	- Si $y$ está en el subárbol izquierdo de $x$, entonces $key[y] ≤ key[x]$
 	- Si $y$ está en el subárbol derecho de $x$, entonces $key[y] ≥ key[x]$

- **Ordenamiento mediante recorrido**:
  	- El recorrido **inorden** del árbol produce una lista de claves **en orden ascendente**.

- **Complejidad del recorrido inorden**:
  	- $Θ(n)$


**Consultas sobre un ABB**

*Tipos de consultas:*

- Buscar una clave
- Encontrar el **mínimo**
- Encontrar el **máximo**
- Encontrar el **sucesor** de un nodo
- Encontrar el **predecesor** de un nodo

**Complejidad de las consultas:**

- Cada operación se puede hacer en $O(h)$ donde $h$ es la altura del árbol.


**Ejemplos de consultas**

*Búsqueda de una clave $k$*

- Comenzar en la raíz $x$.
- Si $k < key[x]$ ir al subárbol izquierdo.
- Si $k > key[x]$ ir al subárbol derecho.
- Si $k == key[x]$ nodo encontrado.

*Búsqueda iterativa*

- Igual lógica, pero en ciclo en lugar de recursión.

*Mínimo*

- Ir al subárbol izquierdo hasta llegar a una hoja.

*Máximo*

- Ir al subárbol derecho hasta llegar a una hoja.

*Predecesor de un nodo $x$*

- Es el nodo $y$ tal que $key[y]$ es la mayor clave **menor que** $key[x]$.

*Sucesor de un nodo $x$*

- Es el nodo $y$ tal que $key[y]$ es la menor clave **mayor que** $key[x]$.

**¿Cómo se obtiene el sucesor de un nodo $x$?**

- El **sucesor** de un nodo $x$ es el nodo $y$ tal que $key[y]$ es la **menor clave mayor que** $key[x]$.


**Sucesor de un nodo**

![Sucesor de un nodo en ABB](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb14.png)


**Consultas**

![Consultas sobre ABB](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb15.png)

**Inserción**

![Inserción en un ABB](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb19e.png)

**Eliminación**

*Paso 1*

![Eliminación paso 1](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb23e.png)

*Paso 2*

![Eliminación paso 2](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb24.png)

*Paso 3*
![Eliminación paso 3](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb25.png)

*Paso 4*

![Eliminación paso 4](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb26.png)

*Paso 5*

![Eliminación paso 5](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb27.png)

*Paso 6*

![Eliminación paso 6](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb28.png)

*Paso 7*

![Eliminación paso 7](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb30.png)

*Paso 8*

![Eliminación paso 8](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb31.png)

*Paso 9*

![Eliminación paso 9](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb32.png)

*Paso 10*

![Eliminación paso 10](/4_Estructuras_Recursivas/1_ArbolBinario/Images/arbolbb33.png)

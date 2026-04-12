# Teoría de Gráficas

### Definición fundamental

**Definición (Kolman, p. 125).** Una **digráfica** (o gráfica dirigida) $G$ consiste en un conjunto finito de **vértices** (o nodos) $\{P_1, P_2, \ldots, P_n\}$ y un conjunto de **arcos** (aristas dirigidas). Cada arco $P_iP_j$ es un par ordenado: va *de* $P_i$ *a* $P_j$. La arista $P_iP_j$ es diferente de $P_jP_i$.

Las digráficas modelan situaciones donde la relación entre dos elementos **no es necesariamente recíproca**: influencia social, comunicación, dominancia, flujos de información.

---

### Matriz de adyacencia

**Definición (Kolman, p. 126).** La **matriz de adyacencia** de una digráfica $G$ con $n$ vértices es la matriz $A(G) = [a_{ij}]$ de $n \times n$ donde:

$$a_{ij} = \begin{cases} 1 & \text{si existe el arco } P_iP_j \\ 0 & \text{en otro caso} \end{cases}$$

**Propiedades estructurales:**
- La diagonal principal es completamente cero: $a_{ii} = 0$ para todo $i$ (ningún vértice tiene arco hacia sí mismo).
- La suma de la fila $i$ cuenta cuántos vértices $P_i$ influye directamente (**grado de salida**).
- La suma de la columna $j$ cuenta cuántos vértices influyen directamente en $P_j$ (**grado de entrada**).

---

### Modelos en sociología y comunicaciones

Kolman (p. 127) identifica tres tipos principales de relación modelable con digráficas:

1. **Acceso:** $P_i$ tiene acceso a $P_j$ (no necesariamente recíproco). Ejemplo: teléfonos de emergencia en autopistas.
2. **Influencia:** $P_i$ influye en $P_j$ (si $P_i$ influye en $P_j$, $P_j$ podría o no influir en $P_i$).
3. **Dominancia:** para cada par, uno domina al otro pero no ambos. Estas son las **digráficas de dominancia** o **gráficas de torneo**.

---

### Acceso en múltiples etapas

**Definición (Kolman, p. 128).** $P_i$ tiene **acceso en $r$ etapas** a $P_k$ si existe una sucesión $P_i, P_{j_1}, P_{j_2}, \ldots, P_{j_{r-1}}, P_k$ tal que cada par consecutivo está conectado por un arco.
**Teorema 2.1 (Kolman, p. 128).** Sea $A(G)$ la matriz de adyacencia de una digráfica $G$ y sea $B_r = [A(G)]^r$ la $r$-ésima potencia. Entonces el elemento $(i,j)$ de $B_r$ es el **número de formas** en que $P_i$ tiene acceso a $P_j$ en **exactamente $r$ etapas**.
**Corolario:** Si definimos la matriz acumulada

$$C = A(G) + [A(G)]^2 + \cdots + [A(G)]^r$$

entonces $c_{ij}$ es el número de formas en que $P_i$ tiene acceso a $P_j$ en **una, dos, ..., o $r$ etapas**. Esto modela la **propagación de rumores, tendencias o influencia indirecta**.

---

### Clanes

**Definición (Kolman, p. 129).** En una digráfica, un **clan** es un subconjunto **maximal** $S$ de vértices tal que:
  - $|S| \geq 3$.
  - Para todo $P_i, P_j \in S$, existe el arco $P_iP_j$ **y** el arco $P_jP_i$ (acceso mutuo).
  - $S$ es maximal: no existe $T \supsetneq S$ que satisfaga (b).

**Procedimiento para detectar clanes (Kolman, p. 130):**

**Paso 1.** Construir la **matriz simétrica** $S = [s_{ij}]$ donde:

$$s_{ij} = s_{ji} = \begin{cases} 1 & \text{si } a_{ij} = 1 \text{ y } a_{ji} = 1 \\ 0 & \text{en otro caso}\end{cases}$$

**Paso 2.** Calcular $S^3 = [s_{ij}^{(3)}]$.

**Teorema 2.2 (Kolman, p. 130).** $P_i$ pertenece a un clan **si y sólo si** $s_{ii}^{(3)} > 0$.

**Intuición:** $s_{ii}^{(3)} > 0$ significa que $P_i$ puede alcanzarse a sí mismo en tres pasos dentro del grafo simétrico, lo que garantiza la existencia de un triángulo mutuo $P_i \to P_j \to P_k \to P_i$.

---

### Trayectorias y grafos fuertemente conexos

**Definición (Kolman, p. 132).** Una **trayectoria** (o camino) de $P_i$ a $P_k$ es una sucesión de vértices **distintos** $P_i, P_{a}, P_{b}, \ldots, P_{r}, P_k$ unidos por arcos dirigidos consecutivos.

**Definición (Kolman, p. 132).** La digráfica $G$ es **fuertemente conexa** si para cualesquiera dos vértices $P_i$ y $P_j$ (con $i \neq j$) existe una trayectoria dirigida de $P_i$ a $P_j$.

**Teorema 2.3 (Kolman, p. 133).** Una digráfica con $n$ vértices es fuertemente conexa **si y sólo si** la matriz

$$E = A(G) + [A(G)]^2 + \cdots + [A(G)]^{n-1}$$ 

no tiene ninguna entrada igual a cero.

**Procedimiento (Kolman, p. 133):**

**Paso 1.** Calcular $E = A(G) + [A(G)]^2 + \cdots + [A(G)]^{n-1}$.

**Paso 2.** $G$ es fuertemente conexa $\iff$ toda entrada de $E$ es positiva.

---

### Resumen de términos clave

| Término | Significado |
|---|---|
| Digráfica (gráfica dirigida) | Grafo con arcos ordenados |
| Vértices (nodos) | Elementos de la red |
| Arcos dirigidos | Relaciones con dirección $P_i \to P_j$ |
| Matriz de adyacencia $A(G)$ | Representación matricial de la digráfica |
| Acceso en $r$ etapas | Alcance indirecto a través de $r$ intermediarios |
| Clan | Subgrupo maximal de influencia mutua ($\geq 3$ nodos) |
| Fuertemente conexa | Toda la red es alcanzable desde cualquier nodo |

---

## Código Python: 

```python
import numpy as np

# ─── Matriz de adyacencia ─────────────────────────────────────────────────
A = np.array([
    [0, 1, 1, 1, 0],
    [1, 0, 1, 0, 0],
    [1, 1, 0, 0, 1],
    [0, 1, 0, 0, 1],
    [0, 0, 1, 1, 0]
], dtype=int)

labels = ['C1', 'C2', 'C3', 'C4', 'C5']

print("=" * 55)
print("PARTE 2 — Grados de salida y entrada")
print("Grados de salida:", {labels[i]: A[i].sum() for i in range(5)})
print("Grados de entrada:", {labels[j]: A[:,j].sum() for j in range(5)})

print("\nPARTE 3 — Potencias de A(G)")
A2 = A @ A
print("A^2:\n", A2)
C_acc = A + A2
print("A + A^2:\n", C_acc)

# Caminos C1->C2 en 2 pasos
print("\nCaminos C1->C2 en exactamente 2 pasos:")
for k in range(5):
    if A[0,k] == 1 and A[k,1] == 1:
        print(f"  C1 -> C{k+1} -> C2")

print("\nPARTE 4 — Clanes (Teorema 2.2)")
S = np.array([[1 if A[i,j]==1 and A[j,i]==1 else 0
               for j in range(5)] for i in range(5)])
print("S:\n", S)
S3 = S @ S @ S
print("S^3:\n", S3)
print("Diagonal de S^3:", [S3[i,i] for i in range(5)])
print("Pertenecen a un clan:", [labels[i] for i in range(5) if S3[i,i] > 0])

print("\nPARTE 5 — Conexión fuerte (Teorema 2.3)")
A3 = A2 @ A
A4 = A3 @ A
E = A + A2 + A3 + A4
print("E = A+A²+A³+A⁴:\n", E)
print("Fuertemente conexa:", np.all(E > 0))

print("\nPARTE 6 — Sin C1")
A_p = np.delete(np.delete(A, 0, 0), 0, 1)
print("A(G') sin C1:\n", A_p)
A_p2 = A_p @ A_p
A_p3 = A_p2 @ A_p
Ep = A_p + A_p2 + A_p3
print("E':\n", Ep)
print("G' fuertemente conexa:", np.all(Ep > 0))
```

---

## Resumen de Conceptos Cubiertos

| Concepto | Referencia Kolman | 
|---|---|
| Digráfica, vértices, arcos | Def., p. 125 |
| Matriz de adyacencia $A(G)$ | p. 126 |
| Grado de salida / grado de entrada | p. 127 |
| Modelos de influencia en sociología | p. 127 |
| Acceso en $r$ etapas | Def., p. 128 |
| **Teorema 2.1:** $[A(G)]^r$ cuenta caminos | p. 128 |
| Acumulado $A + A^2 + \cdots + A^r$ | p. 128, ec. (1) |
| Definición de clan | Def., p. 129 |
| Matriz simétrica $S$ para clanes | p. 130 |
| **Teorema 2.2:** $s_{ii}^{(3)} > 0 \iff C_i \in$ clan | p. 130 |
| Trayectoria / camino en digráfica | Def., p. 132 |
| Digráfica fuertemente conexa | Def., p. 132 |
| **Teorema 2.3:** criterio matricial conexión fuerte | p. 133 |
| Eliminación de nodo — robustez de la red | Aplicación |


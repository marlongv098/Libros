# Cadenas de Markov

### Definición fundamental

**Definición (Kolman, p. 150).** Una **cadena de Markov** o **proceso de Markov** es aquel en el que la probabilidad de que el sistema esté en un estado particular en un periodo de observación dado, depende **solamente** de su estado en el periodo de observación **inmediato anterior**.

* Esta propiedad se conoce como la **propiedad de Markov** o **propiedad sin memoria**: el pasado no importa, solo el presente.

---

### Probabilidades de transición y Matriz de Transición

Sea un sistema con $n$ estados posibles. Para $1 \leq i, j \leq n$, se define:

$$t_{ij} = P(\text{el sistema pasa al estado } i \mid \text{actualmente está en el estado } j)$$

Las $t_{ij}$ son las **probabilidades de transición** y satisfacen:

$$0 \leq t_{ij} \leq 1 \qquad \text{y} \qquad \sum_{i=1}^{n} t_{ij} = 1 \quad \forall j \tag{1}$$

La condición (1) dice que **cada columna** de $T = [t_{ij}]$ suma 1. La matriz $T$ recibe los nombres de:
  - **Matriz de transición** (Kolman)
  - **Matriz estocástica** (por columnas)
  - **Matriz de Markov** o **matriz de probabilidades**

---

### Vector de estado

El **vector de estado** en el periodo $k$ es:

$$\mathbf{x}^{(k)} = \begin{pmatrix} p_1^{(k)} \\ p_2^{(k)} \\ \vdots \\ p_n^{(k)} \end{pmatrix}$$

donde $p_j^{(k)}$ es la probabilidad de que el sistema esté en el estado $j$ en el periodo $k$. El vector $\mathbf{x}^{(0)}$ es el **vector de estado inicial**.

---

### Evolución del sistema

**Teorema 2.4 (Kolman, p. 151).** Si $T$ es la matriz de transición de un proceso de Markov, entonces:

$$\mathbf{x}^{(k+1)} = T\,\mathbf{x}^{(k)} \tag{2}$$

Por inducción, se obtiene la fórmula general:

$$\boxed{\mathbf{x}^{(n)} = T^n\,\mathbf{x}^{(0)}} \tag{3}$$

La matriz de transición y el vector de estado inicial **determinan completamente** toda la evolución futura del sistema.

---

### Vector de probabilidad

**Definición (Kolman, p. 153).** El vector $\mathbf{u} \in \mathbb{R}^n$ es un **vector de probabilidad** si:

$$u_i \geq 0 \quad (1 \leq i \leq n) \qquad \text{y} \qquad u_1 + u_2 + \cdots + u_n = 1$$

Todo vector de estado es un vector de probabilidad.

---

### Procesos regulares

**Definición (Kolman, p. 153).** Una matriz de transición $T$ es **regular** si todas las entradas de alguna potencia $T^k$ son positivas. Un proceso de Markov es **regular** si su matriz de transición lo es.

**Criterio práctico:** si todas las entradas de la propia $T$ son positivas, entonces $T$ es regular (pues $T^1$ ya tiene entradas positivas).

---

### Convergencia de matrices regulares

**Teorema 2.5 (Kolman, p. 154).** Si $T$ es la matriz de transición de un proceso de Markov regular, entonces cuando $n \to \infty$:

$$T^n \to A = \begin{pmatrix} u_1 & u_1 & \cdots & u_1 \\ u_2 & u_2 & \cdots & u_2 \\ \vdots & \vdots & & \vdots \\ u_n & u_n & \cdots & u_n \end{pmatrix}$$

donde todas las columnas de $A$ son idénticas y cada columna $\mathbf{u} = (u_1, \ldots, u_n)^T$ es un vector de probabilidad con $u_i > 0$.

---

### Vector de estado estacionario (único)

**Teorema 2.6 (Kolman, p. 154–155).** Si $T$ es una matriz de transición regular:

**(a)** Para cualquier vector de probabilidad $\mathbf{x}$:

$$T^n \mathbf{x} \to \mathbf{u} \quad \text{cuando } n \to \infty$$

es decir, $\mathbf{u}$ es el **vector de estado estacionario** (o de equilibrio).

**(b)** El vector $\mathbf{u}$ es el **único** vector de probabilidad que satisface:

$$T\mathbf{u} = \mathbf{u} \tag{4}$$

**Interpretación:** a largo plazo, la distribución del sistema converge a $\mathbf{u}$ independientemente del estado inicial.

---

### Dos métodos para calcular $\mathbf{u}$

**Método 1 — Iteración por potencias (Kolman, p. 155):**
1. Calcular $T^n \mathbf{x}^{(0)}$ para $n$ creciente.
2. $\mathbf{u}$ es el límite de esta sucesión.

**Método 2 — Sistema homogéneo (Kolman, p. 155–156):**

La ecuación $T\mathbf{u} = \mathbf{u}$ equivale a:
$$(I_n - T)\mathbf{u} = \mathbf{0} \tag{5}$$

1. Resolver el sistema homogéneo (5).
2. De la familia de soluciones, seleccionar la única que satisface $u_1 + u_2 + \cdots + u_n = 1$.

---

## Código Python: 

```python
import numpy as np
from fractions import Fraction

# ─── Matriz de transición ───────────────────────────────────────────────────
T = np.array([
    [0.70, 0.40, 0.20],
    [0.20, 0.40, 0.30],
    [0.10, 0.20, 0.50]
])

x0 = np.array([0.50, 0.30, 0.20])

print("=" * 55)
print("1. VERIFICACIÓN CONDICIÓN ESTOCÁSTICA (cols suman 1)")
print("   Suma columnas:", T.sum(axis=0))

print("\n2. EVOLUCIÓN DE ESTADOS (Método 1 — iteración)")
x = x0.copy()
for k in range(21):
    if k in [0, 1, 2, 3, 5, 10, 20]:
        print(f"   x^({k:2d}) = [{x[0]:.6f}  {x[1]:.6f}  {x[2]:.6f}]")
    x = T @ x

print("\n3. MÉTODO 2 — Sistema (I - T)u = 0 con normalización")
A = np.eye(3) - T
A_aug = A.copy()
A_aug[-1] = [1, 1, 1]
b = np.zeros(3)
b[-1] = 1
u = np.linalg.solve(A_aug, b)
print(f"   u = {u}")
print(f"   Suma: {u.sum():.10f}")
print(f"   Error ||Tu - u|| = {np.linalg.norm(T @ u - u):.2e}")

print("\n4. CONVERGENCIA DE T^n")
for n in [5, 10, 20, 50]:
    Tn = np.linalg.matrix_power(T, n)
    print(f"\n   T^{n}:\n{np.round(Tn, 6)}")

print("\n5. CASO NO REGULAR — Ejemplo oscilante")
T_star = np.array([[0, 1], [1, 0]])
x_osc = np.array([1/3, 2/3])
print(f"   x^(0) = {x_osc}")
for k in range(1, 6):
    x_osc = T_star @ x_osc
    print(f"   x^({k}) = {x_osc}  ← {'OSCILA' if k % 2 != 0 else '       '}")
```

---

## Resumen de Conceptos Cubiertos

| Concepto | Referencia Kolman |
|---|---|
| Definición de cadena / proceso de Markov | Def., p. 150 |
| Probabilidades de transición $t_{ij}$ | p. 150, ec. (1) |
| Matriz de transición / estocástica | pp. 150–151 |
| Vector de estado $\mathbf{x}^{(k)}$ y vector inicial | p. 151 |
| **Teorema 2.4:** $\mathbf{x}^{(k+1)} = T\mathbf{x}^{(k)}$, $\mathbf{x}^{(n)} = T^n\mathbf{x}^{(0)}$ | p. 151 |
| Vector de probabilidad | Def., p. 153 |
| Matriz de transición regular | Def., p. 153 |
| Proceso NO regular — oscilación | Ejemplo 5, p. 153 |
| **Teorema 2.5:** convergencia $T^n \to A$ | p. 154 |
| **Teorema 2.6:** unicidad del vector estacionario $\mathbf{u}$ | pp. 154–155 |
| Método 1: iteración de potencias | p. 155 |
| Método 2: sistema $(I-T)\mathbf{u}=\mathbf{0}$ + normalización | pp. 155–156 |

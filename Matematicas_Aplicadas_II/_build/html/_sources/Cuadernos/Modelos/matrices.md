# Sistemas de Ecuaciones Lineales

### Sistema de ecuaciones lineales y forma matricial

Un sistema de $m$ ecuaciones lineales con $n$ incógnitas tiene la forma:

$$a_{11}x_1 + a_{12}x_2 + \cdots + a_{1n}x_n = b_1$$
$$a_{21}x_1 + a_{22}x_2 + \cdots + a_{2n}x_n = b_2$$
$$\vdots$$
$$a_{m1}x_1 + a_{m2}x_2 + \cdots + a_{mn}x_n = b_m$$

En forma matricial compacta: $AX = B$, donde $A = [a_{ij}]$ es la **matriz de coeficientes** de $m \times n$, $X$ es el vector de incógnitas y $B$ el vector de términos independientes.

---

### Matriz aumentada y operaciones elementales por filas

La **matriz aumentada** $[A \mid B]$ condensa toda la información del sistema. Las tres **operaciones elementales por filas** (Kolman, §1.2) que preservan el conjunto solución son:

- **$F_{ij}$**: intercambiar las filas $i$ y $j$.
- **$F_i(c)$**: multiplicar la fila $i$ por un escalar $c \neq 0$.
- **$F_{ij}(c)$**: reemplazar $R_i \leftarrow R_i + c\,R_j$.

---

### Forma escalonada reducida por filas (RREF)

Una matriz está en **RREF** (Kolman, §1.2) si:
1. Las filas de ceros (si las hay) están al fondo.
2. El primer elemento no cero de cada fila no nula (el **pivote**) es 1.
3. Cada pivote está a la derecha del pivote de la fila anterior.
4. Cada pivote es el único elemento no cero en su columna.

---

### Teorema de existencia y unicidad

Sea $r = \text{rango}(A)$ y $r^* = \text{rango}([A \mid B])$.

| Condición | Tipo de solución |
|:---:|:---:|
| $r^* > r$ | **Inconsistente** (sin solución) |
| $r^* = r = n$ | **Solución única** |
| $r^* = r < n$ | **Infinitas soluciones** ($n - r$ variables libres) |

---

## Código Python: 

```python
import numpy as np
from sympy import Matrix, Rational

# ─── SISTEMA 1: 3×3 ──────────────────────────────────────────────────────────
print("=" * 55)
print("SISTEMA 1 — 3×3 (solución única)")

A3 = Matrix([[10, 12, 15],
             [6,  8,  12],
             [12, 12, 18]])
b3 = Matrix([960, 660, 1080])

print(f"det(A) = {A3.det()}")
print(f"rango(A) = {A3.rank()}")

aug3 = A3.row_join(b3)
rref3, piv3 = aug3.rref()
print("RREF:", rref3)
# Solución: x1=30, x2=30, x3=20

x3 = Matrix([30, 30, 20])
print("Verificación A*x = b:", (A3 * x3).T, "==", b3.T)

# ─── SISTEMA 2: 3×4 ──────────────────────────────────────────────────────────
print("\n" + "=" * 55)
print("SISTEMA 2 — 3×4 (infinitas soluciones)")

A4 = Matrix([[10, 12, 15, 20],
             [6,  8,  12, 14],
             [12, 12, 18, 24]])
b4 = Matrix([960, 660, 1080])

aug4 = A4.row_join(b4)
rref4, piv4 = aug4.rref()
print("rango(A4):", A4.rank(), "| rango(aug):", aug4.rank())
print("Variables libres:", 4 - A4.rank())
print("RREF:", rref4)

# Solución general con t libre
print("\nSolución general (x4 = t):")
print("  x1 = 30 - t")
print("  x2 = 30")
print("  x3 = 20 - (2/3)t")
print("  x4 = t")

# Verificación para varios valores de t
print("\nPlanes concretos (verificación):")
for t in [0, 3, 6, 15, 30]:
    x = Matrix([30 - t, 30, 20 - Rational(2, 3) * t, t])
    check = A4 * x
    ok = check == b4
    print(f"  t={t:2d}: x={x.T}  ✓" if ok else f"  t={t}: ERROR")
```

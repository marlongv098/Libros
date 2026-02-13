# Tipos de funciones

## Funciones Inyectivas

**¿Qué es una función inyectiva?**

Una función $f$ es **inyectiva** si y solo si $f(x) = f(y)$ implica que $x = y$ para todo $x$ y $y$ en el dominio de $f$. Es decir, dos elementos distintos del dominio no pueden tener la misma imagen.

Expresado formalmente:

$$
\forall x \forall y \, ((f(x)=f(y)) \Rightarrow (x=y)).
$$

**Ejemplo visual:**

![Función inyectiva](/2_Conjuntos_Funciones/2_Funciones/Images/inyectiva.png)

---

**Ejemplo 1:**

Sea $f(x) = x + 1$, una función del conjunto de los enteros en los enteros.  
Supongamos $f(x) = f(y)$, entonces $x+1 = y+1$, por lo tanto $x = y$.  

**Conclusión:** La función es inyectiva.

**Ejemplo 2:**

Sea $f(x) = x^2$, del conjunto de los enteros en los enteros.  
$f(1) = 1 = f(-1)$ pero $1 \neq -1$.

**Conclusión:** La función **no** es inyectiva.

---

## Funciones Estrictamente Crecientes

Una función $f$ cuyo dominio y codominio son subconjuntos de los números reales es **estrictamente creciente** si:

$$
x < y \Rightarrow f(x) < f(y)
$$

o de forma formal:

$$
\forall x \forall y \, ((x < y) \Rightarrow (f(x) < f(y)))
$$

---

## Funciones Estrictamente Decrecientes

Una función $f$ es **estrictamente decreciente** si:

$$
x < y \Rightarrow f(x) > f(y)
$$

o formalmente:

$$
\forall x \forall y \, ((x < y) \Rightarrow (f(x) > f(y)))
$$

---

## Funciones Sobreyectivas

Una función $f: A \rightarrow B$ es **sobreyectiva** si **cada elemento del codominio** es imagen de al menos un elemento del dominio. Es decir, para todo $b \in B$, existe $a \in A $ tal que $f(a) = b$.

Formalmente:

$$
(\forall b \in B, \exists a \in A, | f(a) = b)
$$

**Ejemplo visual:**

![Función sobreyectiva](/2_Conjuntos_Funciones/2_Funciones/Images/sobreyectiva.png)

---

**Ejemplo 1:**  

Sea $f(x) = x + 1$, de los enteros en los enteros.  
Dado cualquier $y \in \mathbb{Z}$, existe $x = y - 1$ tal que $f(x) = y$.

**Conclusión:** La función es sobreyectiva.

**Ejemplo 2:**  

Sea $f(x) = x^2$, de los enteros en los enteros.  
No existe $x \in \mathbb{Z}$ tal que $f(x) = -1$.

**Conclusión:** La función **no** es sobreyectiva.

---

## Funciones Biyectivas

Una función es **biyectiva** si es **inyectiva y sobreyectiva** al mismo tiempo. Esto significa que:

- Cada elemento del codominio tiene **exactamente una preimagen** en el dominio.
- No hay elementos del codominio sin imagen, ni dos elementos del dominio que se asignen al mismo valor.

**Ejemplo visual:**

![Función biyectiva](/2_Conjuntos_Funciones/2_Funciones/Images/biyeccion.png)
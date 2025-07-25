# Funciones

**¿Qué es una función?**

**Definición:**  
Sean $A$ y $B$ conjuntos. Una función $f$ de $A$ en $B$ es una asignación de exactamente un elemento de $B$ a cada elemento de $A$. Escribimos $f(a) = b$ si $b$ es el único elemento de $B$ asignado por la función $f$ al elemento $a$ de $A$. Si $f$ es una función de $A$ en $B$, escribimos:

$$
f : A \rightarrow B
$$

![función1](/2_Conjuntos_Funciones/2_Funciones/Images/funcion1.png)

---


**¿Qué es el dominio y el codominio de una función?**

**Definición:**  
Si $f$ es una función de $A$ en $B$, entonces:
- $A$ es el **dominio** de $f$.
- $B$ es el **codominio** de $f$.

---

**¿Qué es la imagen y la preimagen de una función?**

**Definición:**  
Si $f(a) = b$, entonces:
- $b$ es la **imagen** de $a$.
- $a$ es una **preimagen** de $b$.

---

**¿Qué es el rango o imagen de una función?**

**Definición:**  
El **rango** o **imagen** de $f$ es el conjunto de todas las imágenes de elementos de $A$.

**Ejemplo:**  
Sea $G$ la función que asigna una letra a una persona.

![función2](/2_Conjuntos_Funciones/2_Funciones/Images/funcion2.png)

- El dominio de $G$ es:  
  $ \{ \text{Adams, Chou, Goodfriend, Rodríguez, Stevens} \} $

- El codominio de $G$ es:  
  $ \{ A, B, C, D, F \} $

- La imagen de $G$ es:  
  $ \{ A, B, C, F \} $

---

## Operaciones con funciones reales

**Suma y multiplicación de funciones**

**Definición:**  
Sean $f_1$ y $f_2$ funciones de $A$ en $\mathbb{R}$. Entonces, $f_1 + f_2$ y $f_1 f_2$ también son funciones de $A$ en $\mathbb{R}$ definidas por:

$$
(f_1 + f_2)(x) = f_1(x) + f_2(x)
$$

$$
(f_1 f_2)(x) = f_1(x) \cdot f_2(x)
$$

---

**Ejemplo:**  

Sean $f_1(x) = x^2$ y $f_2(x) = x - x^2$. ¿Cuáles son $f_1 + f_2$ y $f_1 f_2$?

**Solución:**

$$
(f_1 + f_2)(x) = x^2 + (x - x^2) = x
$$

$$
(f_1 f_2)(x) = x^2 (x - x^2) = x^3 - x^4
$$

---

## Imagen de un subconjunto

**Imagen de un subconjunto del dominio**

**Definición:**  
Sea $f : A \rightarrow B$ una función, y sea $S \subseteq A$. La **imagen** de $S$ es el subconjunto de $B$ formado por todas las imágenes de los elementos de $S$:

$$
f(S) = \{ f(s) \mid s \in S \}
$$

---

**Ejemplo:**  
Sean:

- $A = \{ a, b, c, d, e \} $
- $B = \{ 1, 2, 3, 4 \} $

Definimos $f$ como:

$$
f(a) = 2,\quad f(b) = 1,\quad f(c) = 4,\quad f(d) = 1,\quad f(e) = 1
$$

Sea $S = \{ b, c, d \} $. ¿Cuál es $f(S)$?

**Solución:**  

$$
f(S) = \{ 1, 4 \}
$$

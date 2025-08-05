# Métodos de Demostración

En matemáticas, una demostración es un argumento lógico que establece la verdad de una proposición. Existen diversos métodos de demostración, cada uno adecuado para diferentes tipos de afirmaciones. A continuación, se describen algunos de los métodos más comunes.

## Demostración Directa

Este método se usa cuando se parte de hipótesis verdaderas y se aplican reglas lógicas y propiedades matemáticas para llegar a la conclusión deseada.

**Ejemplo:** 

Demostrar que la suma de dos números pares es un número par.

**Demostración:**

Sean $a$ y $b$ dos números pares. Entonces existen enteros $k$ y $m$ tales que:

$$
    a = 2k, \quad b = 2m
$$

Sumando ambos números,

$$
    a + b = 2k + 2m = 2(k + m)
$$

Dado que $k + m$ es un número entero, se concluye que $a + b$ es par.

## Demostración por Contraposición

Se basa en demostrar que la negación de la conclusión implica la negación de la hipótesis.

**Ejemplo:** 

Demostrar que si $n^2$ es impar, entonces $n$ es impar.

**Demostración:**

Supongamos que $n$ es par. Entonces $n = 2k$ para algún entero $k$. Elevando al cuadrado:

$$
    n^2 = (2k)^2 = 4k^2 = 2(2k^2)
$$

Como $n^2$ es múltiplo de 2, es par. Esto contradice la hipótesis, por lo que $n$ debe ser impar.

## Demostración por Reducción al Absurdo

Se asume que la proposición es falsa y se llega a una contradicción lógica.

**Ejemplo:** 

Demostrar que $\sqrt{2}$ es irracional.

**Demostración:**

Supongamos que $\sqrt{2}$ es racional. Entonces se puede escribir como $\frac{p}{q}$, con $p$ y $q$ enteros primos entre sí. Elevando al cuadrado,

$$
    2 = \frac{p^2}{q^2} \Rightarrow p^2 = 2q^2
$$

Esto implica que $p^2$ es par, lo que implica que $p$ también es par. Sea $p = 2k$, entonces,

$$
    (2k)^2 = 2q^2 \Rightarrow 4k^2 = 2q^2 \Rightarrow q^2 = 2k^2
$$

Por lo tanto, $q^2$ es par, lo que implica que $q$ también es par. Pero esto contradice la suposición de que $p$ y $q$ son primos entre sí. Por lo tanto, $\sqrt{2}$ es irracional.

## Disyunción por casos
Si una afirmación se cumple en todos los casos posibles, entonces se cumple siempre.

**Ejemplo**

De muestre que $|xy| = |x||y|$ para $x, y \in \mathbb{R}$

Recordemos la definición del valor absoluto:

$$
|a| =
\begin{cases}
a & \text{si } a \geq 0 \\
-a & \text{si } a < 0
\end{cases}
$$

**Demostración**

Procedemos por casos, considerando los signos de $x$ y $y$:

**Caso 1:** $x \geq 0$, $y \geq 0$

Entonces $xy \geq 0$, por lo que:

- $|x| = x$
- $|y| = y$
- $|xy| = xy$

Luego:

$$
|xy| = xy = x \cdot y = |x||y|
$$

---

**Caso 2:** $x \geq 0$, $y < 0$

Entonces $xy < 0$, por lo que:

- $|x| = x$
- $|y| = -y$
- $|xy| = -(xy) = -x \cdot y$

Pero $|x||y| = x \cdot (-y) = -xy$

Luego:

$$
|xy| = -xy = |x||y|
$$

**Caso 3:** $x < 0$, $y \geq 0$

Análogo al caso anterior. $xy < 0$, entonces:

- $|x| = -x$
- $|y| = y$
- $|xy| = -(xy) = -x \cdot y$

Y:

$$
|x||y| = (-x) \cdot y = -xy = |xy|
$$

**Caso 4:** $x < 0$, $y < 0$

Entonces $xy > 0$, porque el producto de dos negativos es positivo. Entonces:

- $|x| = -x$
- $|y| = -y$
- $|xy| = xy$

Y:

$$
|x||y| = (-x)(-y) = xy = |xy|
$$

**Conclusión:**

En todos los casos se cumple que:

$$
|xy| = |x||y|
$$

Por tanto, para todo $x, y \in \mathbb{R}$:

$$
\boxed{|xy| = |x||y|}
$$

## Demostración por contraejemplo: 

Una demostración por contraejemplo se utiliza para refutar una afirmación universal, es decir, una afirmación que dice que algo es cierto para todos los elementos de un conjunto.

**Ejemplo**

Todos los números primos son impares

**Demostración**

Consideremos el número:

$$
2
$$

- $2$ es **mayor que 1**
- Los únicos divisores positivos de $2$ son $1$ y $2$
- Entonces, **$2$ es primo**
- Pero **$2$ es par**

**Conclusión:**

Hemos encontrado un número primo que **no es impar**: el número **2**.

Por lo tanto, la afirmación:

$$
\text{"Todos los números primos son impares"}
$$

es **falsa**.

## Demostración por equivalencia

Una demostración por equivalencia se usa cuando queremos probar que dos afirmaciones son lógicamente iguales, es decir, que una es verdadera si y solo si la otra también lo es.

**Ejemplo:**

Demuestre que si $n$ es par si y solo si $(n+1)$ es impar

Esto es una proposición de equivalencia lógica. Escribimos:

**Demostración**

Para probar una equivalencia, debemos demostrar **ambas direcciones**:

**Caso 1:** Si $n$ es par, entonces $(n+1)$ es impar

Por definición:

- Un número **par** es un entero que se puede escribir como $n = 2k$ para algún $k \in \mathbb{Z}$.
- Entonces, $(n+1) = 2k + 1$.

Esto es exactamente la forma de un número **impar**.

Por lo tanto, si $n$ es par, entonces $(n+1)$ es impar.


**Caso 2:** Si $(n+1)$ es impar, entonces $n$ es par

Si $(n+1)$ es impar, entonces por definición:

- $(n+1) = 2k + 1$ para algún $k \in \mathbb{Z}$.
- Entonces, $n = (2k + 1) - 1 = 2k$.

Esto es exactamente la forma de un número **par**.

Por lo tanto, $n$ es par.

**Conclusión:**

Como se ha demostrado **en ambos sentidos**:

$$
n \text{ es par } \iff (n+1) \text{ es impar}
$$


## Demostración por Inducción Matemática

Se usa para demostrar afirmaciones sobre los números naturales.

**Ejemplo:** 

Demostrar que para todo $n \geq 1$:

$$
    1 + 2 + \dots + n = \frac{n(n+1)}{2}
$$

**Paso Base:** 

Para $n = 1$:

$$
    1 = \frac{1(1+1)}{2} = 1
$$

Lo cual es cierto.

**Paso Inductivo:** 

Supongamos que la fórmula es cierta para algún $n = k$, es decir:

$$
    1 + 2 + \dots + k = \frac{k(k+1)}{2}
$$

Demostramos que es cierta para $n = k + 1$:

$$
    1 + 2 + \dots + k + (k+1) = \frac{k(k+1)}{2} + (k+1)
$$

Sacamos factor común $(k+1)$:

$$
    = \frac{k(k+1) + 2(k+1)}{2} = \frac{(k+1)(k+2)}{2}
$$

Que es la fórmula para $n = k+1$. Por lo tanto, la afirmación es verdadera para todo $n \geq 1$.

## Conclusión

Cada método de demostración tiene su utilidad y aplicación dependiendo del tipo de problema a resolver. La práctica y la comprensión de estos métodos son fundamentales en la matemática y otras disciplinas científicas.

# Ejercicios

[Demostraciones Logica Formal](/1_Logica_Formal/CyEDSesión2-Ejercicios.pdf)
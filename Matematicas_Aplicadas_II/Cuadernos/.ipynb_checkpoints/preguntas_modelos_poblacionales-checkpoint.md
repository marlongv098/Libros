# Análisis de la Población Universitaria a partir de Modelos de Variación

## Planteamiento general

Una universidad desea comprender cómo evoluciona su población estudiantil en el tiempo. Actualmente cuenta con registros históricos de ingresos, deserciones y graduaciones, y desea analizar esta evolución mediante distintos modelos matemáticos.

Se propone modelar esta dinámica usando dos enfoques:

1. **Modelo logístico**, que considera que el crecimiento depende de la cantidad de estudiantes actuales pero se reduce al acercarse a una capacidad máxima debido a la saturación institucional.
2. **Modelo lineal**, que considera ingresos constantes y deserción proporcional al número de estudiantes activos.

El objetivo es comparar ambos modelos, resolver sus ecuaciones, analizar el comportamiento de la población a lo largo del tiempo, y discutir sus implicaciones a nivel institucional.

---

## Parte técnica común a ambos modelos

Para cada modelo, los estudiantes deberán:

1. Encontrar la **solución analítica general** de la ecuación diferencial correspondiente.
2. Estudiar el **equilibrio poblacional** y su estabilidad.
3. Comparar la **solución simbólica** con la simulación gráfica.
4. Evaluar el impacto de los parámetros en el comportamiento de la población.

---

## Modelo 1: Crecimiento Logístico

El modelo logístico tiene la forma:

$$
\frac{dx}{dt} = ax - bx^2
$$

donde:

- $x(t)$ es la población universitaria en el tiempo $ t $
- $a$ representa la tasa de crecimiento proporcional
- $b$ representa la deserción por saturación (proporcional al cuadrado de la población)

### Preguntas técnicas

1. Encuentre la solución analítica de la ecuación

   $$ 
   \frac{dx}{dt} = ax - bx^2
   $$
   
3. ¿Qué representa el equilibrio poblacional en este modelo?
4. ¿Se alcanza un valor estable? ¿En qué condiciones?
5. ¿Cómo se comporta la solución cuando $t \to \infty$?
6. ¿La solución simbólica coincide con el comportamiento gráfico?
7. ¿Cómo afecta el valor de $a$ o $b$ al crecimiento o decrecimiento de la población?
8. ¿Qué significa el término $bx^2$ en la dinámica poblacional? ¿Es siempre negativo?

---

## Modelo 2: Ingresos constantes con deserción proporcional (modelo lineal)

Este modelo se representa por la ecuación:

$$
\frac{dx}{dt} = r - d x
$$

donde:

- $r$ es el ingreso constante de nuevos estudiantes por año
- $d$ es la tasa de deserción proporcional
- $x(t)$ es la población universitaria en el tiempo $t$

### Preguntas técnicas

1. Encuentre la solución analítica de la ecuación

   $$
   \frac{dx}{dt} = r - dx
   $$
   
3. ¿Cuál es el valor de equilibrio de la población?
4. ¿Cómo varía la solución con diferentes valores iniciales $x(0)$?
5. ¿Cómo se comporta la población en el tiempo? ¿Crece, decrece o se estabiliza?
6. ¿Cómo afecta el valor de $r$ o $d$ al equilibrio poblacional?
7. ¿Qué ocurre si el ingreso $r$ no alcanza a compensar la deserción?
8. ¿La solución simbólica se ajusta a los resultados de simulaciones numéricas?

---

## Recomendaciones

- Representar gráficamente cada modelo para distintos valores iniciales.
- Estimar el tiempo en que la población alcanza el $90%$ del valor de equilibrio.
- Discutir cuál modelo se ajusta mejor a situaciones reales observadas en universidades.


---

## Ejercicio aplicado al Modelo Logístico

### Contexto

Una universidad reporta que su tasa de crecimiento anual es del $25%$ gracias a su buena reputación. Sin embargo, estudios indican que cuando el número de estudiantes supera los $30,000$, los recursos se saturan y la deserción aumenta. Se estima que esta deserción por saturación puede modelarse con un coeficiente de $\frac{1}{120000}$.

Con una población inicial de $10,000$ estudiantes, se desea predecir el comportamiento de la población a lo largo de los años.

El modelo a aplicar es:

$$
\frac{dx}{dt} = 0.25x - \frac{1}{120000}x^2
$$

### Preguntas

1. ¿Cuál es la solución analítica de esta ecuación?
2. ¿Cuál es el valor de equilibrio poblacional?
3. ¿La población crecerá o decrecerá desde los $10,000$ estudiantes? ¿Se estabiliza?
4. ¿Después de cuántos años se alcanza el $90%$ del equilibrio?
5. ¿Qué ocurriría si la tasa de crecimiento aumentara al $30%$?
6. Interprete el término cuadrático en este contexto: ¿por qué crece la deserción con el número de estudiantes?

---

## Ejercicio aplicado al Modelo Lineal

### Contexto

Una universidad cuenta actualmente con $18,000$ estudiantes. Cada año ingresan $2,000$ nuevos estudiantes. Se estima que la tasa de deserción anual es del $15%$ de la población activa. La universidad desea conocer si esta dinámica permitirá mantener o reducir la población en el largo plazo.

El modelo a aplicar es:

$$
\frac{dx}{dt} = 2000 - 0.15x
$$

### Preguntas

1. Encuentre la solución analítica de la ecuación diferencial.
2. ¿Cuál es el valor de equilibrio poblacional?
3. ¿La población aumentará o disminuirá desde los $18,000$ estudiantes?
4. ¿Después de cuántos años se estabiliza la población al $95%$ del equilibrio?
5. ¿Qué ocurre si los ingresos suben a $2,500$ estudiantes por año?
6. ¿Qué pasaría si se reduce la tasa de deserción al $10%$?

---

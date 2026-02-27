# Modelación Matemática de la Ventilación Mecánica

## 1. Contexto del Problema

En medicina, la ventilación mecánica es un procedimiento que asiste o reemplaza la respiración espontánea en pacientes críticamente enfermos mediante un ventilador.

En este proyecto se modela matemáticamente el proceso mecánico mediante el cual:

- El ventilador **infla el pulmón** (fase de inspiración).
- Luego permite que el pulmón **se desinfle** (fase de espiración).

Se supone que:

1. Cada respiración tiene duración total fija $t_{tot}$.
2. Cada respiración se divide en:
   - Inspiración: $0 \le t \le t_i$
   - Espiración: $t_i \le t \le t_{tot}$
3. Durante la inspiración el ventilador aplica presión constante $P_{app}$.
4. Durante la espiración la presión aplicada es cero.
5. El pulmón se modela como un solo compartimento.
6. El balance de presiones en la vía aérea es:

$$
P_r + P_e + P_{ex} = P_{app}
$$

donde:

- $P_r = R \frac{dV}{dt}$ (presión resistiva)
- $P_e = \frac{1}{C} V$ (presión elástica)
- $P_{ex}$ es la presión residual al final de la espiración.

---

## 2. Modelo Matemático

Durante la inspiración:

$$
R \frac{dV_i}{dt} + \frac{1}{C} V_i + P_{ex} = P_{app}
\quad 0 \le t \le t_i
$$

Durante la espiración:

$$
R \frac{dV_e}{dt} + \frac{1}{C} V_e + P_{ex} = 0
\quad t_i \le t \le t_{tot}
$$

Condiciones:

$$
V_i(0) = 0
$$

$$
V_e(t_i) = V_i(t_i) = V_T
$$

$$
V_e(t_{tot}) = 0
$$

---

## 3. Preguntas del Proyecto

* Resuelva la ecuación diferencial de inspiración para $V_i(t)$ con condición inicial:

$$
V_i(0)=0
$$

---

* Resuelva la ecuación diferencial de espiración para $V_e(t)$ con condición:

$$
V_e(t_i)=V_T
$$

---

* Usando el hecho de que $V_i(t_i)=V_T$, demuestre que

$$
P_{ex} =
\frac{(e^{t_i/(RC)}-1)P_{app}}
{e^{t_{tot}/(RC)}-1}
$$

---

* Implementa Euler para resolver las ecuaciones de inspiración y espiración. usa la condición $V_e(t_i)=V_T$ 
y compara la solución numérica con la solución exacta para:

$$
R = 10 \; \text{cm H}_2\text{O}/(\text{L·seg})
$$

$$
C = 0.02 \; \text{L}/\text{cm H}_2\text{O}
$$

$$
P_{app} = 20 \; \text{cm H}_2\text{O}
$$

$$
t_i = 1 \; \text{seg}
$$

$$
t_{tot} = 3 \; \text{seg}
$$

* Grafique $V_i(t)$ y $V_e(t)$ en el intervalo:

$$
0 \le t \le t_{tot}
$$


---

* La presión alveolar media durante inspiración está dada por:

$$
P_m =\frac{1}{t_i} \int_0^{t_i}\left(\frac{V_i(t)}{C}\right) dt + P_{ex}
$$

* Calcule esta cantidad usando la expresión obtenida al resolver la ecuación diferencial 
de inspiración para $V_i(t)$ con condición inicial $V_i(0)=0$


## 3. Preguntas de Reflexión y Análisis

- El modelo parte de la ecuación:

$$
R \frac{dV}{dt} + \frac{1}{C}V + P_{ex} = P_{aw}
$$

  * ¿Qué sucede si la resistencia $R$ aumenta significativamente?  
  * ¿Qué ocurre si la complianza $C$ disminuye? la complianza es que tan facil se expande un pulmón cuando se le aplica presión
  * ¿Cómo se reflejarían estos cambios en la curva de volumen?

---

- En las soluciones aparece el término exponencial:

$$
e^{-t/(RC)}
$$

 
  * ¿Qué significa que $RC$ sea grande?  
  * ¿Qué implica que $RC$ sea pequeño?  
  * ¿Cómo afecta esto la velocidad de llenado y vaciado pulmonar?

---

- Analice el comportamiento del sistema cuando:

* $R \to 0$  
* $C \to \infty$ 

Para cada caso:

  - Describa el comportamiento matemático graficando las soluciones.
  
---


- Recordando que:

$$
V_i(t) =
C (P_{app}-P_{ex})
\left(
1 - e^{-t/(RC)}
\right)
$$

  * ¿La relación entre $V_T$ y $P_{app}$ es lineal? Justifique matemáticamente.  
  * ¿Qué ocurre si se duplica $P_{app}$?  

---

* ¿Por qué es necesario imponer la condición $V_e(t_{tot}) = 0$?  

---

- La presión alveolar media está dada por:

$$
P_m =
\frac{1}{t_i}
\int_0^{t_i}
\left(
\frac{V_i(t)}{C}
\right)
dt
+ P_{ex}
$$

  * ¿Qué implicaría clínicamente un aumento excesivo de $P_m$?

---

* Considere dos pacientes:

  - Paciente A: Alta resistencia $R$ (ej. EPOC).
  - Paciente B: Baja complianza $C$ (ej. fibrosis pulmonar).

  * ¿Cómo cambiaría la forma de $V_i(t)$ en cada caso?  
  * ¿Cuál paciente tardaría más en alcanzar el volumen corriente $V_T$?  





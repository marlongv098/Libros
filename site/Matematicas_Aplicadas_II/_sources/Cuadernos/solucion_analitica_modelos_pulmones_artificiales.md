# Respuestas Detalladas – Modelo de Ventilación Mecánica

---

# (a) Solución de la ecuación de inspiración

Ecuación:

$$
R \frac{dV_i}{dt} + \frac{1}{C} V_i + P_{ex} = P_{app}
$$

Restamos $P_{ex}$:

$$
R \frac{dV_i}{dt} + \frac{1}{C} V_i = P_{app} - P_{ex}
$$

Dividimos todo por $$R$$:

$$
\frac{dV_i}{dt} + \frac{1}{RC} V_i = \frac{P_{app}-P_{ex}}{R}
$$

Es una ecuación lineal de primer orden.

Factor integrante:

$$
\mu(t) = e^{\int \frac{1}{RC} dt} = e^{t/(RC)}
$$

Multiplicamos toda la ecuación:

$$
e^{t/(RC)} \frac{dV_i}{dt} + \frac{1}{RC} e^{t/(RC)} V_i = \frac{P_{app}-P_{ex}}{R} e^{t/(RC)}
$$

Lado izquierdo es derivada de producto:

$$
\frac{d}{dt} \left(V_i e^{t/(RC)} \right) = \frac{P_{app}-P_{ex}}{R} e^{t/(RC)}
$$

Integramos:

$$
V_i e^{t/(RC)} = \frac{P_{app}-P_{ex}}{R} \int e^{t/(RC)} dt + K
$$

Calculamos la integral:

$$
\int e^{t/(RC)} dt = RC e^{t/(RC)}
$$

Entonces:

$$
V_i e^{t/(RC)} = \frac{P_{app}-P_{ex}}{R} RC e^{t/(RC)} + K
$$

Simplificamos:

$$
V_i e^{t/(RC)} = C (P_{app}-P_{ex}) e^{t/(RC)} + K
$$

Despejamos:

$$
V_i(t) = C (P_{app}-P_{ex}) + K e^{-t/(RC)}
$$

Usamos condición $V_i(0)=0$:

$$
0 = C (P_{app}-P_{ex}) + K
$$

Entonces:

$$
K = - C (P_{app}-P_{ex})
$$

Solución final:

$$
V_i(t) = C (P_{app}-P_{ex}) \left(1 - e^{-t/(RC)} \right)
$$

---

# (b) Solución de la ecuación de espiración

Ecuación:

$$
R \frac{dV_e}{dt} + \frac{1}{C} V_e + P_{ex} = 0
$$

Restamos:

$$
R \frac{dV_e}{dt} + \frac{1}{C} V_e = -P_{ex}
$$

Dividimos por R:

$$
\frac{dV_e}{dt} + \frac{1}{RC} V_e = -\frac{P_{ex}}{R}
$$

Factor integrante:

$$
e^{t/(RC)}
$$

Procedimiento igual que antes.

Solución general:

$$
V_e(t) = - C P_{ex} + K e^{-t/(RC)}
$$

Usamos condición $V_e(t_i)=V_T$:

$$
V_T = - C P_{ex} + K e^{-t_i/(RC)}
$$

Despejamos K:

$$
K = \left(V_T + C P_{ex} \right) e^{t_i/(RC)}
$$

Entonces:

$$
V_e(t) = - C P_{ex} + \left(V_T + C P_{ex} \right) e^{-(t-t_i)/(RC)}
$$

---

# (c) Demostración de la fórmula de $$P_{ex}$$

Sabemos:

$$
V_i(t_i)=V_T
$$

Entonces:

$$
V_T = C (P_{app}-P_{ex}) \left(1 - e^{-t_i/(RC)} \right)
$$

Ahora usamos condición final:

$$
V_e(t_{tot})=0
$$

Sustituimos:

$$
0 = - C P_{ex} + \left(V_T + C P_{ex} \right) e^{-(t_{tot}-t_i)/(RC)}
$$

Despejamos cuidadosamente y sustituimos $V_T$.

Después de simplificar algebraicamente se obtiene:

$$
P_{ex} = \frac{(e^{t_i/(RC)}-1)P_{app}} {e^{t_{tot}/(RC)}-1}
$$

---

# (d) Sustitución numérica

Calculamos:

$$
RC = 10 \times 0.02 = 0.2
$$

Entonces:

$$
\frac{1}{RC} = 5
$$

Las funciones quedan:

$$
V_i(t) = 0.02(20-P_{ex}) \left(1 - e^{-5t} \right)
$$

$$
V_e(t) = -0.02P_{ex} + (V_T+0.02P_{ex}) e^{-5(t-1)}
$$

---

# (e) Presión alveolar media

Recordemos:

$$
P_m = \frac{1}{t_i} \int_0^{t_i} \left(\frac{V_i(t)}{C} \right)dt + P_{ex}
$$

Sustituimos:

$$
\frac{V_i(t)}{C} = (P_{app}-P_{ex}) (1 - e^{-t/(RC)})
$$

Entonces:

$$
P_m = \frac{P_{app}-P_{ex}}{t_i} \int_0^{t_i} (1 - e^{-t/(RC)}) dt + P_{ex}
$$

Integramos término a término:

$$
\int_0^{t_i} 1 dt = t_i
$$

$$
\int_0^{t_i} e^{-t/(RC)} dt = RC (1 - e^{-t_i/(RC)})
$$

Sustituimos:

$$
P_m = (P_{app}-P_{ex}) \left(1 - \frac{RC}{t_i} (1 - e^{-t_i/(RC)})\right) + P_{ex}
$$

Esta es la expresión final de la presión alveolar media.

# Entrega

## Taller de Ebanistería

**Contexto.** 

Un taller de ebanistería fabrica tres tipos de muebles: **sillas** ($x_1$), **mesas de café** ($x_2$), **mesas de comedor** ($x_3$) y **estantes** ($x_4$). Cada pieza pasa secuencialmente por tres estaciones de trabajo: **lijado** ($L$), **pintura** ($P$) y **barnizado** ($B$). Los tiempos de procesamiento en minutos por unidad son:

| Estación | Silla ($x_1$) | Mesa café ($x_2$) | Mesa comedor ($x_3$) | Estante ($x_4$) |
|:---:|:---:|:---:|:---:|:---:|
| Lijado ($L$) | 10 | 12 | 15 | 20 |
| Pintura ($P$) | 6 | 8 | 12 | 14 |
| Barnizado ($B$) | 12 | 12 | 18 | 24 |

La disponibilidad semanal de cada estación es: lijado **16 h** (960 min), pintura **11 h** (660 min), barnizado **18 h** (1 080 min). 

**Preguntas**

1. El gerente desea conocer **todas** las combinaciones de producción que operan a plena capacidad. 
2. Se debe tener en cuenta que el gerente desea que todas las combinaciones posibles sean enteras. 

## Red de influencia en un comité de evaluación

**Contexto**

Cinco investigadores — Romero ($C_1$), Salcedo ($C_2$), Torres ($C_3$), Ureña ($C_4$) y Vega ($C_5$) — integran el comité de evaluación de proyectos de investigación de una universidad. A lo largo de múltiples sesiones de deliberación, el coordinador del comité ha registrado las siguientes relaciones de influencia: cuando un investigador respalda públicamente la postura de otro durante las discusiones, se establece un arco dirigido entre ellos.

- Romero ($C_1$) influye en Salcedo ($C_2$), Torres ($C_3$) y Ureña ($C_4$).
- Salcedo ($C_2$) influye en Romero ($C_1$) y Torres ($C_3$).
- Torres ($C_3$) influye en Romero ($C_1$), Salcedo ($C_2$) y Vega ($C_5$).
- Ureña ($C_4$) influye en Salcedo ($C_2$) y Vega ($C_5$).
- Vega ($C_5$) influye en Torres ($C_3$) y Ureña ($C_4$).

**Preguntas**

  1. Trace el grafo $G$ de la red usando NetworkX. Cada nodo es un investigador y cada arco $C_i \to C_j$ indica que $C_i$ influye en $C_j$.
  2. Construya la matriz de adyacencia $A(G) = [a_{ij}]$ de $5 \times 5$.
  3. ¿Qué investigador(es) tienen mayor grado de salida (influyen en más personas)?
  4. ¿Qué investigador(es) tienen mayor grado de entrada (son más influenciados)?
  5. Calcule $[A(G)]^2$. Interprete $b_{12}^{(2)}$ y $b_{44}^{(2)}$.
  6. Forme $C = A(G) + [A(G)]^2$ e identifique pares sin acceso en $\leq 2$ etapas. Que sugiere el resultado obtenido. Haga todos los análisis del problema.
  7. Determine si hay un clan dentro del grafo. **Clan** Construya una matriz $S$ tal que  $s_{ij} = 1$ si y sólo si $a_{ij} = 1$ y $a_{ji} = 1$ (influencia mutua). La matrix $S$ es simetrica. Calcule $S^3$ que resultado obtiene. Interprete la información de la matriz obtenida. 
  8. Interprete el resultado obtenido al determinar si $G$ es fuertemente conexa calculando 
  
  $$E = A(G) + [A(G)]^2 + [A(G)]^3 + [A(G)]^4$$ 
  9. Suponga que $C_1$ abandona la red. Analice si la red restante $G'$ sobre $\{C_2, C_3, C_4, C_5\}$ sigue siendo fuertemente conexa.
  
## Dinámica de Calificaciones Crediticias

**Contexto** 

Una firma de análisis financiero clasifica a sus clientes corporativos en tres categorías de riesgo crediticio: A (bajo riesgo), B (riesgo medio) y C (alto riesgo). Con base en datos históricos trimestrales, se han estimado las siguientes probabilidades de transición entre categorías:

  * De los clientes en categoría A: el $70\%$ permanece en A, el $20\%$ degrada a B y el $10\%$ degrada a C.
  * De los clientes en categoría B: el $40\%$ mejora a A, el $40\%$ permanece en B y el $20\%$ degrada a C.
  * De los clientes en categoría C: el $20\%$ mejora a A, el $30\%$ mejora a B y el $50\%$ permanece en C.

**Preguntas**

  1. Con la información anterior, construya la matriz de transición $T$ del proceso de Markov. Verifique que satisface la condición estocástica (Suma de los vectores columnas es igual a 1 y ningún elemento de la matriz es negativo).
  2. Suponga que al inicio del estudio la distribución del portafolio es: $50\%$ en categoría A, $30\%$ en B y $20\%$ en C. Calcule los vectores de estado $x^1$ $x^2$ y $x^3$. interprete el resultado
  3. Determine si el proceso de Markov es regular. existe un único vector de estado estacionario $u$ con $u_i > 0$, y el sistema converge a él para cualquier distribución inicial
  4. Calcular de forma iterativa y haciendo uso de python cuantos trimestres tarda en alcanzar el sistema de estado estacionario. Teniendo en cuenta que el vector es de estado estacionario es:
  
  $$\begin{pmatrix} 0.51064 \\ 0.27660 \\ 0.21277 \end{pmatrix}$$
  
  5. El resultado anterior depende del vector de esta inicial. Explique su repuesta.  
  6. Calcule exactamente el vector de estado estacionario $u$ resolviendo $(I-T)u=0$ de forma analítica.(Haciendo uso de Gauss_Jordan).
  7. Verifique sus cálculos con un programa de pytho que realice el proceso de Gauss_Jordan.
  8. Deacuerdo a los análisis hechos, cual seria la conclusión de la firma de análisis finaciero. 
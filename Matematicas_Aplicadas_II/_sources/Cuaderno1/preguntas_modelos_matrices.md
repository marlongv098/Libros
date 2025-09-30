# Entrega

## Matrices

* Una empresa de transporte urbano opera $4$ rutas ($R_1$, $R_2$, $R_3$ y $R_4$). Cada ruta incurre mensualmente en costos por:

  - Conductor: $C$ (costos por turno de conductor).
  - Autobús: $A$ (costos por bus asignado; corresponde a arrendamiento/amortización).
  - Combustible: $F$ (cantidad de combustible consumido).
  - Mantenimiento: $M$ (costo mantenimiento programada).

* Para el mes analizado, la planificación operativa (unidades consumidas por ruta) y los costos totales mensuales por ruta son:

  1. En la Ruta 1 ($R_{1}$) se emplean 3 conductores, 3 autobuses, 500 litros de combustible y 1 revisión de mantenimiento. El costo total es 13770 euros.
  2. En la Ruta 2 ($R_{2}$) se utilizan 5 conductores, 3 autobuses, 300 litros de combustible y 4 revisiones de mantenimiento. El costo total es 17512 euros.
  3. En la Ruta 3 ($R_{3}$) se necesitan 3 conductores, 3 autobuses, 500 litros de combustible y 3 revisiones de mantenimiento. El costo total es 14270 euros.
  4. En la Ruta 4 ($R_{4}$) se usan 4 conductores, 2 autobuses, 400 litros de combustible y 0 revisiones de mantenimiento. El costo total es 12016 euros.

### Preguntas

  1. Plantee el sistema matricial $AX=B$ correspondiente al problema.
  2. Resuelva el sistema usando métodos matriciales.
  
## Variable Limpieza  

La empresa decide incorporar la variable limpieza sin modificar los costos totales. La limpieza profunda no se realiza de la misma manera en todas las rutas, pues depende de factores como la duración del recorrido, el número de pasajeros transportados y las condiciones ambientales:

  - Limpieza: L (costo de limpieza).

  
* Las intervenciones de limpieza planificadas por ruta son:

  1. Ruta 1 ($R_{1}$): cada autobús realiza 1 limpieza profunda mensual.
  2. Ruta 2 ($R_{2}$): por ser la ruta con mayor flujo de pasajeros, cada autobús recibe una limpieza adicional al mes respecto de $R_{1}$.
  3. Ruta 3 ($R_{3}$): aunque tiene poco flujo de pasajeros, atraviesa zonas rurales y polvorientas, por lo que requiere la misma cantidad de limpiezas que $R_{1}$.
  4. Ruta 4 ($R_{4}$): al operar en zonas poco concurridas la rotación es baja, por lo que no se programan limpiezas todos los meses. 

### Preguntas

* Al sistema ya planteado debe incorporarle la variable limpieza. El costo de limpieza no debe afectar el costo total.
* Resuelva el nuevo sistema. Que concluciones puede sacar de este nuevo sistema?. 

## Grafos

En una plataforma de redes sociales, cinco influencers ($I_{1}$,$I_{2}$,$I_{3}$,$I_{4}$,$I_{5}$) interactúan y afectan las opiniones de sus seguidores con distinta intensidad.

* Para modelar este comportamiento, se le asignaron pesos a cada conexión, donde:

  1. Un peso alto indica mayor influencia sobre el otro influencer. 
  2. Un peso bajo indica menor influencia.

* La relación de influencia entre ellos se modela de la siguiente manera:

  1. $I_{1}$ influye en $I_{2}(0.8)$, $I_{4}(0.6)$ y $I_{5}(0.7)$. 
  2. $I_{2}$ influye en $I_{3}(0.9)$ y $I_{4}(0.5)$. 
  3. $I_{3}$ influye en $I_{1}(0.4)$ y $I_{4}(0.8)$.
  4. $I_{4}$ influye en $I_{5}(0.9)$. 
  5. $I_{5}$ influye en $I_{2}(0.6)$ y $I_{3}(0.7)$.

La influencia puede representarse mediante un grafo dirigido, donde un arco de $I_{i}$ a $I_{j$ indica que $I_{i}$ influye en $I_{j}$ y el peso representa que tan fuerte es la conexión existente entre los influencers.

### Preguntas 

- Representación de la Influencia: 

  1. Construya la matriz de adyacencia ponderada $W$, donde $W_{ij}$ representa la influencia de $I_{i}$ sobre $I_{j}$ 
  2. Dibuje el grafo dirigido con pesos para visualizar la estructura de influencia.

- Análisis de Influencia Global: 

  1. ¿Qué influencer tiene la mayor suma de pesos salientes (es decir, influye más en los demás)? 
  2. ¿Qué influencer tiene la mayor suma de pesos entrantes (es decir, es más influenciado por otros)? 

- Impacto de un Influencer Clave: 

  1. Si $I_{1}$ deja de publicar contenido, ¿cómo afecta la influencia en la red?
  2. Si $I_{5}$ aumenta en un $50\%$ su influencia sobre $I_{2}$ e $I_{3}$, ¿cómo cambia la propagación de la información en la red?

- Propagación de una Opinión o Producto Nuevo: 

  1. Supongamos que un nuevo producto es promocionado inicialmente solo por $I_{1}$. Modela la propagación del producto en la red considerando que cada influencer adopta el producto con una probabilidad proporcional a la influencia que recibe. 
  2. ¿Cuánto tiempo (en términos de pasos de propagación) tarda en llegar a todos los influencers?

## Markov

1. Modelado de Comportamiento de Usuarios en una Página Web con Cadenas de Markov. Imagina una página web con 4 secciones (variables/estados) que un usuario puede visitar:

  - Inicio (I): Página principal. 
  - Productos (P): Catálogo de productos. 
  - Blog (B): Artículos informativos. 
  - Carrito (C): Página de compra. 

2. Se quiere modelar las transiciones entre estas páginas como una Cadena de Markov para:

  - Predecir la próxima sección que visitará un usuario dado su estado actual. 
  - Calcular el estado de equilibrio (distribución estacionaria) para saber la proporción de tiempo que los usuarios pasan en cada página a largo plazo.

Basado en datos históricos la matriz de transición del problema, la cual contiene las probabilidades de moverse de una pagina a otra, puede construirse con la siguiente información:

a) Un usuario en Inicio tiene: 

  - $20\%$ de probabilidad de quedarse en Inicio. 
  - $40\%$ de ir a Productos. 
  - $30\%$ de ir al Blog. 
  - $10\%$ de ir al Carrito. 

b) Un usuario en Producto tiene: 

  - $30\%$ de ir a Inicio. 
  - $30\%$ de quedarse en Productos. 
  - $20\%$ de ir al Blog. 
  - $20\%$ de ir al Carrito.

c) Un usuario en Blog tiene: 

  - $10\%$ de ir a Inicio. 
  - $20\%$ de ir a Productos. 
  - $50\%$ de quedarse en Blog. 
  - $20\%$ de ir al Carrito.

d) Un usuario en Carrito tiene: 

  - $40\%$ de ir a Inicio. 
  - $10\%$ de ir a Productos. 
  - $10\%$ de ir a Blog. 
  - $40\%$ de quedarse en Carrito.

### Preguntas

Predicción de la próxima página: 

a) Si un usuario está actualmente en la página de Blog (B), ¿cuál es la probabilidad de que visite Carrito (C) en la siguiente paso?

b) Encuentra el vector de estado estacionario del sistema. Se debe en cuenta que el vector satisface Tx=x donde T es la matriz de transición del problema y x es el vector de estado estacionario, donde la suma de los componentes del vector de estado estacionario debe ser igual a 1. 

c) Si un usuario está actualmente en Inicio (I), ¿cuál es la probabilidad de que esté en Carrito (C) después de 2 pasos? 

d) Si un usuario empieza en Productos (P), ¿qué página es más probable que visite después de 3 pasos? 

e) ¿Cuál es el número esperado de pasos que un usuario pasa en Blog (B) antes de ir a Carrito (C) por primera vez?

f) Si la probabilidad $P(B\rightarrow C)$ aumenta de 0.2 a 0.3, ¿cómo cambia la distribución estacionaria? Analizar el impacto de ajustes en la matriz de transición respecto a la matriz inicial.


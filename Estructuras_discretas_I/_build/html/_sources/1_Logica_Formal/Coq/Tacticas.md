# Demostraciones

## ¿Para qué sirve Coq en Ciencias de la Computación?

Coq es un asistente de pruebas que permite escribir demostraciones matemáticas formales y verificar su validez de manera automática. En ciencias de la computación, se utiliza para:
- Probar la corrección de algoritmos.
- Verificar propiedades de programas (por ejemplo, que no fallen o que devuelvan lo correcto).
- Formalizar y razonar sobre sistemas lógicos, lenguajes de programación y estructuras computacionales.

Uno de los primeros temas que se aprenden al usar Coq es **la lógica proposicional**, donde se prueban fórmulas usando reglas lógicas formales. Para ello, Coq ofrece **tácticas** que ayudan a construir demostraciones paso a paso.

---

## Tácticas por la derecha (para construir el objetivo)

Estas tácticas se usan cuando el objetivo principal tiene una estructura lógica particular:

- `intro.`  
  Sirve para introducir una hipótesis cuando el objetivo es una implicación:  
  Si el objetivo es `P -> Q`, entonces `intro H.` convierte `P -> Q` en una hipótesis `H: P` y nuevo objetivo `Q`.

- `split.`  
  Se usa cuando el objetivo es una conjunción `P /\ Q`. Divide el objetivo en dos subobjetivos: demostrar `P` y luego `Q`.

- `left.` y `right.`  
  Se usan cuando el objetivo es una disyunción `P \/ Q`.  
  - `left.` intenta probar `P`.  
  - `right.` intenta probar `Q`.

- `exists x.`  
  Se usa cuando el objetivo es de la forma `∃x, P(x)`. Introduce el testigo `x` y luego intenta probar `P(x)`.

---



## Tácticas por la izquierda (para usar las hipótesis)

Estas tácticas permiten descomponer hipótesis con estructuras lógicas:

- `apply H.`  
  Usa una hipótesis `H: P -> Q` cuando el objetivo es `Q` y ya tienes `P`.

- `destruct H.`  
  Se usa para dividir en casos según el contenido de una hipótesis `H`.  
  Por ejemplo, si `H: P \/ Q`, genera dos subpruebas: una asumiendo `P`, otra asumiendo `Q`.  
  También sirve para hipótesis `P /\ Q`, `exists x, P(x)`, etc.
  
- `trivial.`  
  Resuelve el objetivo si ya es una consecuencia directa de las hipótesis.

- `assert (A : P).`  
  Introduce un nuevo subobjetivo `P` para poder usarlo más adelante como `A`.


---

## Negaciones

En Coq, la negación `¬P` se representa como `P -> False`. Aquí algunas tácticas útiles:

- `absurd P.`  
  Si puedes derivar tanto `P` como `¬P`, esta táctica resuelve la prueba.

- `contradict H.`  
  Cambia el objetivo a `¬P` si tienes `H: P` y se espera una contradicción.

- `exact H.`  
  Finaliza la prueba si `H` es exactamente el objetivo (por ejemplo, si `H: False` y el objetivo es `False`).


**Nota:** `exact` no es una táctica específica para negaciones, sino una táctica general que se utiliza cuando ya tienes una hipótesis o término que coincide exactamente con el objetivo actual.

---

## Ejemplo completo en lógica proposicional

Supongamos que queremos demostrar:  

`(P /\ Q) -> (Q /\ P)`

```coq
Lemma conmutatividad_conjuncion : forall P Q: Prop, (P /\ Q) -> (Q /\ P).
Proof.
  intros P Q H.         (* Introducir hipótesis *)
  destruct H as [HP HQ]. (* Usar la conjunción en H *)
  split.                (* Queremos probar una conjunción *)
  exact HQ.           
  exact HP.
Qed.
```
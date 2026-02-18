# Interface Set

La interfaz Set es parte del framework de colecciones de Java (paquete java.util) y representa una colección de elementos únicos, es decir:

* No permite elementos duplicados — si intentas agregar un elemento que ya existe no se duplica.
* No define orden por índice; no puedes obtener elementos por posición como en una List.
* Está diseñada para modelar matemáticamente la idea de un conjunto.

La interfaz Set extiende Collection, por lo que hereda métodos como add, remove, contains, size, isEmpty y iterator. Las colecciones que implementan la interfaz Set en Java permiten almacenar elementos sin duplicados, pero varían significativamente en su comportamiento interno y eficiencia. La siguiente tabla compara tres implementaciones comunes —HashSet, LinkedHashSet y TreeSet— destacando sus principales características y diferencias para facilitar su elección según el caso de uso.

| Características     | HashSet      | LinkedHashSet       | TreeSet          |
|---------------------|-------------|---------------------|------------------|
| Permite duplicados | No          | No                  | No               |
| Ordena los elementos | No         | Orden de inserción  | Orden alfabético |
| Complejidad       | O(1)        | O(1)                | O(log(n))        |
| Permite (null)    | Sí, 1 valor  | Sí, 1 valor        | No               |
| Estructura       | Tabla Hash  | Tabla Hash + Lista enlazada | Árbol Rojo-Negro |

## Algunos métodos clave que verás en la interfaz:

* `boolean add(E e)` – Agrega un elemento si no está presente.
* `boolean remove(Object o)` – Elimina un elemento del conjunto.
* `boolean contains(Object o)` – Comprueba si el elemento está presente.
* `int size()` – Retorna el número de elementos (cardinalidad).
* `boolean isEmpty()` – Indica si el conjunto está vacío.
* `Iterator<E> iterator()` – Permite recorrer los elementos.

Además puedes usar métodos que operan con conjuntos completos, como:

* `addAll(Collection<? extends E>)` — unión
* `retainAll(Collection<?>)` — intersección
* `removeAll(Collection<?>)` — diferencia

### Ejemplo

- [InterfaceSet](https://github.com/marlongv098/Estructuras/tree/master/2_Conjuntos_Funciones/1_Conjuntos/InterfaceSetUp)

## Estructuras base

- [Tabla Hash](https://marlongv098.github.io/Libros/Estructuras_Discretas_I/3_Estructuras_NO_Recursivas/3_Generics/3_Diccionario/TablasHash.html)
- [Listas Enlazada](https://marlongv098.github.io/Libros/Estructuras_Discretas_I/3_Estructuras_NO_Recursivas/3_Generics/2_LinkedListPersonas/listaEnlazada2.html)

## Árbol Rojo-Negro

Comparación con de arbol Rojo-Negro con un arbol de busqueda binaria.

| Características | BST                          | Árbol Rojo-Negro        |
|---------------|-----------------------------|------------------------|
| Orden        | I < R < D                    | I < R < D              |
| Balanceo automático | No                     | Sí                     |
| Complejidad  | O(N) en el peor caso (desbalanceado) | O(log(n))               |
| Coloración de nodos | No usa                   | Nodo Rojo-Negro        |
| Uso en Java  | `TreeSet` o `TreeMap` (No recomendado) | `TreeSet` o `TreeMap` (Sí recomendado) |

---

**¿Qué es un Árbol Rojo-Negro?**
Es un *árbol binario de búsqueda (BST) balanceado*, donde cada nodo tiene un color *rojo* o *negro* y sigue estas reglas:

- Cada nodo es *rojo* o *negro*.
- La *raíz* siempre es *negra*.
- Un *nodo rojo* no puede tener un hijo rojo (*no hay nodos rojos consecutivos*).
- Cada camino desde la *raíz hasta una hoja* tiene el mismo número de nodos negros (*propiedad de balanceo*).
- Si un *nodo es rojo*, sus *hijos deben ser negros*.
- Un *nodo negro* puede tener *hijos negros*.

Estas reglas garantizan que el árbol esté siempre balanceado, manteniendo la altura en **O(log N)**, lo que lo hace más eficiente que un BST simple.

**¿Cuándo usar un Árbol Rojo-Negro?**

- Cuando necesitas búsquedas, inserciones y eliminaciones rápidas (*O(log N)*).
- Cuando el *orden es importante* (como en `TreeSet` y `TreeMap`).
- Cuando quieres evitar que un *BST se desbalancee*.

### Conclusión

Permitir que un *nodo negro tenga hijos negros* ayuda a:
- Mantener la propiedad de *balanceo* del árbol rojo-negro.
- Evitar que la altura crezca demasiado, garantizando *O(log N)*.
- Reducir la necesidad de demasiadas *rotaciones y recoloreos*.

En resumen, un *nodo negro puede tener hijos negros* porque es una estrategia clave para el balanceo del árbol y su eficiencia.

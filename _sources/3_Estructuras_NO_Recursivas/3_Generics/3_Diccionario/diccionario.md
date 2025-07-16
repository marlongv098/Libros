# Diccionarios

**¿Qué es una estructura de datos de tipo Diccionario?**

- Es una estructura utilizada para manipular objetos en la que se insertan y extraen elementos periódicamente.
- Se puede verificar si un elemento específico pertenece o no a la colección.

---

**¿Cómo se conocen los diccionarios?**

- Arreglos asociativos 
- Mapas.

---

**¿Qué tiene cada elemento en un diccionario?**

- Cada elemento tiene:
    - Una clave **(key)**.
    - Un valor asociado **(value)** a esa clave.

- La analogía con un diccionario del mundo real es que:
    - **Las palabras** representan las claves.
    - **Las definiciones** representan los valores asociados a esas claves.

---

**¿Cómo almacena los datos un diccionario?**

- A través de pares:
- **(clave, valor)**.
- Los datos almacenados en la estructura son los **valores**.
- La **clave** se usa para buscar y encontrar los valores requeridos.

---

**¿En qué ejemplos del mundo real se pueden usar diccionarios?**

Este proyecto implementa un diccionario digital personalizado utilizando una tabla hash como estructura base para el almacenamiento eficiente de pares clave-valor. El código se organiza en varios paquetes con responsabilidades claramente definidas:

* diccionario: contiene las clases Diccionario y DiccionarioInterfaz, que encapsulan la lógica de alto nivel para la gestión del diccionario. Esta capa representa la funcionalidad principal accesible para el usuario, como agregar, buscar o eliminar palabras.
* tablahash: proporciona la implementación de la estructura TablaHash y su interfaz correspondiente. Esta capa es responsable del almacenamiento interno y la resolución de colisiones, asegurando eficiencia en las operaciones de búsqueda.
* ui: incluye la clase Main, que actúa como punto de entrada del programa. Allí se instancia el diccionario y se realiza una demostración de su uso mediante una interfaz de usuario simple o una prueba manual.
* test: agrupa las pruebas automatizadas. DiccionarioTest y TablaHashTest aseguran el correcto funcionamiento de los métodos clave, validando la robustez y fiabilidad del sistema.

[Diccionario](https://github.com/marlongv098/Estructuras/tree/master/3_Estructuras_NO_Recursivas/3_Generics/3_Diccionario/src/main/java/diccionario)

📦  Diccionario

┣ 📂 src

┃ ┣ 📂 main

┃ ┃ ┣ 📂 java

┃ ┃ ┃ ┣ 📂 diccionario

┃ ┃ ┃ ┃ ┣   📜  Diccionario

┃ ┃ ┃ ┃ ┣  📜  DiccionarioIntefaz

┃ ┃ ┃ ┣ 📂 tablahash

┃ ┃ ┃ ┃ ┣  📜 TablaHash

┃ ┃ ┃ ┃ ┣  📜  TablaHashInterfaz

┃ ┃ ┃ ┣ 📂 ui

┃ ┃ ┃ ┃ ┣  📜  Main

┃ ┣ 📂 test

┃ ┃ ┣ 📂  java 

┃ ┃ ┃ ┣ 📂 diccionario

┃ ┃ ┃ ┃ ┣   📜 DiccionarioTest

┃ ┃ ┃ ┣ 📂 tablahash

┃ ┃ ┃ ┃ ┣   📜  TablaHashTest

---


**¿Algunos ejemplos?**

- **Compiladores** (traductores de lenguajes de programación):
  - Mantienen una **tabla de símbolos**.
  - En ella, las claves son **cadenas de caracteres arbitrarias** que corresponden a identificadores en el lenguaje.


**¿Cuál es la diferencia entre un array y un diccionario?**

- En un **array**, la clave debe ser un número (entero positivo o no negativo).
- En un **diccionario**, la clave puede ser cualquier tipo de objeto.

---

**¿Qué suelen ser estas claves?**

- Un conjunto de valores aleatorios como números reales o cadenas de texto.
- Cada clave debe ser única dentro del diccionario.

---

**¿Qué operaciones básicas define esta estructura de datos?**

- $void Add(K key, V value)$ → Agregar un par clave-valor.
- $V Get(K key)$ → Obtener el valor asociado a una clave.
- $boolean Remove(K key)$ → Eliminar un par clave-valor.

---

**¿Qué métodos adicionales pueden existir?**

- $boolean Contains(K key)$ → Verificar si una clave está en el diccionario.
- $int Count()$ → Obtener la cantidad de elementos almacenados.

---

**¿Por qué es importante la implementación de operaciones en un diccionario?**

- Muchas aplicaciones requieren un conjunto dinámico que soporte únicamente las operaciones **INSERTAR, BUSCAR y ELIMINAR**.

---

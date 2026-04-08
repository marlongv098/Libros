# Lista Enlazada Generica

Este proyecto implementa una lista enlazada personalizada para almacenar objetos de tipo persona. Está organizado en tres capas principales:

* En el paquete persona se definen las clases Persona y PersonaGenerica, que representan los datos que se almacenan en la lista.
* En el paquete estructuras se encuentra la lógica de la estructura de datos, incluyendo la clase Nodo que representa cada elemento de la lista y ListaEnlazada, que implementa los métodos para agregar, eliminar, etc...
* En ui, la clase Main actúa como punto de entrada del programa, donde se crean instancias y se demuestra el funcionamiento de la lista enlazada.
* Finalmente, en la carpeta test se encuentra ListaEnlazadaTest.java, que contiene pruebas unitarias para verificar el correcto comportamiento de la estructura.

El diseño permite comprender de forma clara cómo construir una lista enlazada desde cero, utilizando principios básicos de programación orientada a objetos.

[Personas](https://github.com/marlongv098/Estructuras/tree/master/3_Estructuras_NO_Recursivas/3_Generics/2_LinkedListPersonas)

📦  LinkedListPersonas/

┣ 📂 src

┃ ┣ 📂 persona

┃ ┃ ┣  📜  Persona.java

┃ ┃ ┣  📜 Entidad.java

┃ ┣ 📂  estructuras

┃ ┃ ┣ 📜 Nodo.java

┃ ┃ ┣  📜 ListaEnlazada.java

┃ ┣ 📂 ui

┃ ┃ ┣ 📜 Main.java

┣ 📂 test

┃ ┣ 📜 ListaEnlazadaTest.java


**Crear carpetas de test en un proyecto de IntelliJ IDEA**

La carpeta test se creo como un directorio dentro de tu módulo principal. Luego, se marca como "Test Sources Root" para que IntelliJ IDEA reconozca que contiene código de prueba. Esta práctica es coherente con las convenciones de desarrollo de Java y facilita la gestión de las pruebas en tu proyecto.

**Ventajas de hacer Persona genérica:**

* Mayor flexibilidad: Podrías crear diferentes tipos de "personas" que tengan atributos de diferentes tipos. Por ejemplo, podrías tener $Persona<String, Integer>$ para nombre y edad, o $Persona<String, Double>$ si quisieras almacenar la altura como un número decimal.
* Reutilización: Si necesitas crear objetos similares a Persona pero con diferentes tipos de datos, una clase genérica podría evitar la duplicación de código.

**Desventajas de hacer Persona genérica:**

* Complejidad innecesaria: En muchos casos, los atributos de una persona (nombre, edad, etc.) tienen tipos de datos bien definidos. Hacer la clase genérica podría añadir complejidad sin aportar beneficios significativos.
* Pérdida de claridad: Si los tipos de datos de los atributos no son relevantes para la lógica de tu aplicación, hacer la clase genérica podría dificultar la lectura y comprensión del código.
* Posibles problemas de tipado: Si no se usan correctamente, los genéricos pueden llevar a errores de tipado más difíciles de depurar.

**Cuándo podría ser útil hacer Persona genérica:**

* Si necesitas almacenar atributos de Persona que pueden variar en tipo de datos.
* Si estás creando una biblioteca o framework que necesita ser muy flexible.
* Si tu aplicación tiene una lógica muy compleja que se beneficia de la flexibilidad de los genéricos.

# Ejercicio



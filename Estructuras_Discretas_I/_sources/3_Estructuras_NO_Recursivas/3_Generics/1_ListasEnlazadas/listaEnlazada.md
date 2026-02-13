# Listas Enlazadas

Una *lista enlazada* (*Linked List*) es una estructura de datos lineal y dinámica donde los elementos (*nodos*) están conectados mediante punteros o referencias en lugar de ocupar posiciones contiguas en memoria.

Cada nodo contiene:
- Un *dato* (*valor almacenado*).
- Una *referencia al siguiente nodo* en la lista.

## Tipos de Listas Enlazadas

- *Lista Enlazada Simple (SLL)*: Cada nodo apunta al siguiente. Se recorre en una sola dirección.
- *Lista Doblemente Enlazada (DLL)*: Cada nodo apunta al siguiente y al anterior. Se puede recorrer en ambas direcciones.
- *Lista Circular*:
  - En la versión *simple*, el último nodo apunta al primero.
  - En la versión *doble*, el primer y el último nodo están conectados en ambos sentidos.

[Listas](https://github.com/marlongv098/Estructuras/tree/master/3_Estructuras_NO_Recursivas/3_Generics/1_ListasEnlazadas)

📦 Listas Enlazadas

┣ 📂 src

┃ ┣ 📂 listas

┃ ┃ ┣ 📂 simple

┃ ┃ ┃ ┣ 📜 Nodo.java

┃ ┃ ┃ ┣ 📜 ListaSimple.java

┃ ┃ ┣ 📂 doble

┃ ┃ ┃ ┣ 📜 NodoDoble.java

┃ ┃ ┃ ┣ 📜 ListaDoble.java

┃ ┃ ┣ 📂 circular

┃ ┃ ┃ ┣ 📜 NodoCircular.java

┃ ┃ ┃ ┣ 📜 ListaCircular.java

┃ ┣ 📂 main

┃ ┃ ┣ 📜 Main.java


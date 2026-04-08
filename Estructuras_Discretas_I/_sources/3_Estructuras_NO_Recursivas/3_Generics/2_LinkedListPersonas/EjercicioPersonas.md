# Ejercicio

Se requiere construir un sistema que gestione diferentes tipos de entidades:

* Ciudadanos → identificados por cédula (String)
* Estudiantes → identificados por código (Integer)
* Productos → identificados por código (String)

El sistema debe permitir:

* Agregar elementos
* Obtener elementos por índice
* Buscar elementos
* Eliminar elementos

Todo debe hacerse usando una lista enlazada genérica como estructura de datos.

## Estructura del sistema    

src/

 ┣ estructuras/

 ┃ ┣  Nodo.java                  (Generica)

 ┃ ┣  ListaEnlazada.java         (Generica)

 ┣  modelo/

 ┃ ┣ Ciudadano.java             (id: String)

 ┃ ┣  Estudiante.java            (id: Integer)

 ┣  Producto.java              (id: String, precio: double)


 ┣ gestor/

 ┃ ┣  Gestor.java                (Gestor<T> con ListaEnlazada<T>)

 ┣  ui/

 ┃ ┣  Main.java                  (Debe de haber al menos un: agregar, obtener, eliminar y buscar por cada uno de los modelos)

    
## Tenga en cuenta lo siguiente: 

* Los modelos deben ser independientes 
* Desarrollar un gestor generico 
* Buscar elemento por contenido. Ejemplo usar `equals` en cada modelo.
* Eliminar debe retornar el elemento de tipo generico.

## Modelos de dominio

* Cada clase debe tener sus propios atributos.  

    - Ciudadano: cedula, nombre y apellido
    - Estudiantes: codigo, nombre, apellido y carrera
    - Productos: codigo, nombre y precio

* Cada clase debe tener un método buscar, al usar `equals` la clase debe tener un identificador único 
 
    - Ciudadano: cedula
    - Estudiante: codigo
    - Producto: codigo
    

# Tipo Abstracto de Datos

**¿Qué es un Tipo Abstracto de Datos (TAD)?**

* Es la conjunción de variables, operaciones y aserciones que modela un dominio de datos.

**¿Cuál es la diferencia entre TAD y tipo de dato?**

- A diferencia de un tipo de dato, un TAD es especificado de forma precisa.
- Diseñado independiente de cualquier implementación.

---

**¿Por qué nace la noción de TAD?**

- Los lenguajes de programación traen de forma nativa un conjunto de tipos que son útiles pero insuficientes para resolver todo tipo de problemas.
  - Si se quisiera tomar los datos de todos los empleados de una empresa y realizar consultas y reportes, resultaría ineficiente crear una variable para cada dato de cada empleado.

---

**¿Cuáles son sus características esenciales?**

- Independiente de un lenguaje.
- Descriptivo.
- Ajustado a las necesidades del diseñador.
  - Por ello no es raro encontrar diferentes definiciones de listas, colas, árboles, etc.

---

**¿Cuáles son los componentes comunes de un TAD?**

- **Estructura del TAD** (representación).
- **Colección de operaciones**.
- **Conjunto de axiomas** (para el TAD y cada una de las operaciones).

---

**¿Cómo se especifica un TAD de manera formal?**

![Especificación formal del TAD](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad.jpg)

---

**¿Cuáles son los elementos de esta especificación formal?**

- **Nombre**  
  - Único y que lo identifique plenamente.
- **Objeto abstracto**  
  - Representado de manera matemática o gráfica.
  - Puede usarse para referenciarse en formalismos y notaciones de operaciones.
- **Invariante**  
  - Serie de condiciones que no varían nunca al interior del TAD.

---

## Listado de operaciones

- Aquellas operaciones que pueden realizarse con los objetos del tipo del TAD.
- Se especifican con las entradas y la salida que retornará el proceso.
- Adicionalmente, para cada una de las operaciones se debe escribir su comportamiento a manera de aserciones.
  - **Precondición**: lo que se debe cumplir antes de ejecutar la operación.
  - **Poscondición**: cómo queda el sistema después de terminar el proceso.

---

**¿Cómo se describen formalmente las operaciones?**

![Descripción formal de las operaciones](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad1.jpg)

---

**¿Por qué las precondiciones y poscondiciones deben definirse formalmente?**

- El formalismo describe el propósito de la operación sin ambigüedades y con exactitud.
- La formalidad acerca el diseño a la implementación (entre más formal sea el diseño del TAD, más fácil será concretizarlo en un lenguaje de programación).

---

**Ejemplo: TAD ** *Empleado*

- Una compañía tiene la información de Nombre, Foto, Documento de identidad, Cargo y Salario por cada empleado.
- Usar una variable por cada dato o empleado sería ineficiente.
- Una forma eficiente es crear un **tipo de dato Empleado** para guardar la información.
- El objeto abstracto de este nuevo tipo de dato podría verse como un carné donde se encuentra la información del empleado.
- La **invariante del TAD** es una propiedad que hace respetar la ley de que ninguna persona puede ganar un salario menor al salario mínimo mensual vigente.

---

## Primera aproximación al TAD Empleado

![Primera aproximación](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad2.jpg)

**Operaciones formales:**

- **CrearEmpleado**  
![Empleado](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad3.jpg)
- **AgregarNombre**  
![AgregarNombre](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad4.jpg)
- **AgregarCedula**  
![AgregarCedula](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad5.jpg)
- **CambiarSalario**  
![CambiarSalario](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad6.jpg)
- **CambiarCargo**  
![CambiarCargo](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad7.jpg)
- **CambiarFoto**  
![CambiarFoto](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad8.jpg)
- **InfoSalario**  
![InfoSalario](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad9.jpg)
- **InfoCargo**  
![InfoCargo](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad10.jpg)
- **TieneFoto**  
![TieneFoto](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad11.jpg)

---

## Problema con la primera aproximación al TAD Empleado

- Debido a que el objeto abstracto es una imagen, resulta incómoda su traducción a un lenguaje de programación.
- Al definir el objeto abstracto como una **tupla**, su traducción a la mayoría de lenguajes de programación sería más directa.

---

## Segunda aproximación al TAD Empleado

![Segunda aproximación](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad12.jpg)

**Operaciones formales:**

- **CrearEmpleado**  
![CrearEmpleado](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad13.jpg)
- **AgregarNombre**  
![AgregarNombre](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad14.jpg)
- **AgregarCedula**  
![AgregarCedula](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad15.jpg)
- **CambiarSalario**  
![CambiarSalario](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad16.jpg)
- **CambiarCargo**  
![CambiarCargo](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad17.jpg)
- **CambiarFoto**  
![CambiarFoto](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad18.jpg)
- **InfoSalario**  
![InfoSalario](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad19.jpg)
- **InfoCargo**  
![InfoCargo](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad20.jpg)
- **TieneFoto**  
![TieneFoto](/3_Estructuras_NO_Recursivas/4_TAD/Images/tad21.jpg)

---

**¿En qué se dividen las operaciones primitivas de un TAD?**

- **Principales**
  - Constructoras
  - Modificadoras
  - Analizadoras

- **Secundarias**
  - Destructoras
  - Persistencia

---

**Ejercicios**

**Diseñe un Tipo Abstracto de Dato para:**

- Números racionales
- Curso

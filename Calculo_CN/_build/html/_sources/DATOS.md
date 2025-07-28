---
title: "Introducción a Datos"
author: "CN"
date: "2023-09-27"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
## Data.frames

Los data.frames son una clase de objetos especial en R. Normalmente, cuando se realiza un estudio estadístico sobre los sujetos u objetos de una muestra, la información se organiza precisamente en un dataframe: una hoja de datos, en los que cada fila corresponde a un sujeto y cada columna a una variable. La estructura de un data.frame es muy similar a la de una matriz. La diferencia es que una matriz sólo admite valores numéricos, mientras que en un dataframe podemos incluir también datos alfanuméricos. 

## Creación de un dataframe

El siguiente ejemplo muestra como crear un data.frame a partir de los datos recogidos sobre una muestra de 10 personas, para cada una de las cuales se ha registrado su edad, sexo y tiempo en minutos que estuvo hablando por teléfono el día antes de la encuesta:

```{r}
edad <- c(22, 34, 29, 25, 30, 33, 31, 27, 25, 25)
tiempo <- c(14.21, 10.36, 11.89, 13.81, 12.03, 10.99, 12.48, 13.37, 12.29, 11.92)
sexo <- c("M","H","H","M","M","H","M","M","H","H")
misDatos <- data.frame(edad,tiempo,sexo)
misDatos

str(misDatos)    # Estructura de 'misDatos'

names(misDatos)  # Nombre de las variables contenidas en 'misDatos'

```

En este ejemplo se ha creado un data.frame llamado misDatos que contiene a las tres variables edad, tiempo y sexo. La función str() nos muestra la estructura de este objeto, confirmándonos que es un data.frame de tres variables con 10 observaciones cada una. Donde, las dos primeras variables son numéricas y la tercera, el sexo, es un factor con dos valores, “H” y “M”. La función names() por su parte, nos devuelve los nombres de las variables contenidas en misDatos.

Cuando desde R se leen datos situados en un fichero externo (un fichero de texto, una hoja excel, un archivo de datos de SPSS,…), estos datos se importan en un dataframe. 


## Acceso a variables dentro de un dataframe

El acceso a los datos que se encuentran en un data.frame es muy similar al acceso a los datos de una matriz que ya vimos en la sección anterior. Sin embargo, para los data.frames R dispone de algunas funciones que facilitan la tarea de seleccionar o filtrar datos. Así por ejemplo, si queremos ver sólo los datos de los sujetos (filas) 3 a 6, escribiríamos:

```{r}
misDatos[3:6,]
```

Si queremos seleccionar los datos de edad (primera columna), podemos tratar a misDatos igual que si fuese una matriz:

```{r}
misDatos[,1]
```
Aunque también podemos referirnos a la columna por su nombre:

```{r}
misDatos$edad
```
Nótese que en este caso hemos de utilizar el nombre del data.frame (misDatos) seguido del símbolo $ y del nombre de la variable que nos interesa (edad). De manera equivalente, la selección de esa variable puede realizarse mediante:

```{r}
misDatos[,"edad"]
```
o poniendo el nombre de la variable entre dobles corchetes y entre comillas:

```{r}
misDatos[["edad"]]
```

Así pues, los siguientes comandos son equivalentes y dan el mismo resultado:

```{r}
mean(misDatos[,1])
mean(misDatos$edad)
mean(misDatos[,"edad"])
mean(misDatos[["edad"]])
```


## Los comandos attach y detach

El acceso a las variables dentro de un dataframe puede hacerse engorroso cuando hemos de escribir constantemente el nombre del dataframe (en particular si éste es muy largo). Imaginemos, por ejemplo, que para el conjunto misDatos deseamos construir tablas de frecuencias de cada una de las variables que contiene, una tabla de frecuencias cruzadas para el nivel de estudios por sexo, y que además queremos calcular la edad media de los individuos de cada sexo. La sintaxis a utilizar sería la siguiente:

```{r}
table(misDatos$estudios)
table(misDatos$sexo)
table(misDatos$edad)
table(misDatos$sexo,misDatos$edad)
mean(misDatos$edad[misDatos$sexo=="M"])
mean(misDatos$edad[misDatos$sexo=="H"])
```

Obviamente, escribir tantas veces misDatos resulta tedioso, al margen de que se multiplica el riesgo de cometer errores en la redacción de los comandos. Para evitar este problema podemos utilizar el comando attach(), cuyo objetivo consiste básicamente en “enganchar” el contenido del dataframe al entorno donde R busca los nombres de variable; de esta forma se puede acceder directamente a las variables del dataframe por su nombre, sin necesidad de que éste tenga que ser precedido con el nombre del dataframe y el símbolo $; una vez que hayamos acabado nuestra tarea “desenganchamos” el dataframe con detach(). La tarea anterior, utilizando estos comandos, se puede llevar a cabo mediante:

```{r}

attach(misDatos)
#table(estudios)
table(sexo)
table(edad)
table(sexo,edad)
mean(edad[sexo=="M"])
mean(edad[sexo=="H"])
detach(misDatos)

```

lo cual es notablemente más simple. No obstante hay que ser extremadamente precavido al utilizar estos comandos ya que cuando se utilizan varios dataframes simultáneamente es muy fácil hacer attachs y detachs en lugares incorrectos, lo que puede conducir a mezclar datos de distinta procedencia y cometer errores inadvertidos. Obsérvese el siguiente ejemplo:

```{r}
# Creamos el dataframe 'divisas' con la tasa de cambio de algunas monedas
divisas = data.frame(moneda=c("Libra", "Euro", "Rublo"), cambio=c(1.2, 1, 0.02))
divisas

# Creamos un dataframe con el nombre de algunos paises y su moneda nacional
paises = data.frame(pais=c("EEUU", "Venezuela", "Japón"),moneda=c("Dólar", "Bolívar", "Yen"))
paises

attach(divisas) # Enganchamos 'divisas' al entorno de búsqueda de nombres de variables.
moneda          # Se muestra la variable 'moneda' del dataframe 'divisas'

attach(paises)  # ¡CUIDADO! no se ha hecho el 'detach' del datafame 'divisas'

moneda          # 'moneda' se lee del último dataframe "enganchado", que es 'paises'

cambio          # ¡Pero esta variable se sigue leyendo del dataframe 'divisas'!

# Si, por ejemplo, pegamos los valores de ambas variables pensando que corresponden al mismo dataframe estaríamos metiendo la pata.
paste(moneda,cambio, sep=": ")                                

detach(paises)  # Desenganchamos el dataframe 'paises'
moneda          # Recuperamos la variable 'moneda' que estaba en 'divisas'

detach(divisas) # Desenganchamos 'divisas

```

## Pregunta

¿Que pasa si al hacer el detach(divisas) llamamos de nuevo la variable moneda?

## Ejemplo 

Se Crea una variable llamada longitud, con 6 valores, y a continuación un dataframe llamado medidas que contiene tres variables con tres valores cada una; en el dataframe una de las variables también se llama longitud:


```{r}
longitud=c(12,10,11,13,14,17)
medidas=data.frame(longitud=c(6,4,7), peso=c(240,326,315), diametro=c(8,9,9))
```

Calculamos el valor medio de estas cuatro variables:

```{r}
mean(longitud)

mean(medidas$longitud)

mean(medidas$peso)

mean(medidas$diametro)

```

Efectuamos el attach del dataframe medidas para acceder a sus variables y calculamos de nuevo la media de cada una:

```{r}
attach(medidas)

mean(peso)

mean(diametro)

mean(longitud)

```

Obsérvese de que R nos advierte de que el objeto longitud ha quedado enmascarado. Vemos que, si bien R ha calculado los valores medios del diámetro y peso correspondientes a las variables del dataframe medidas, la longitud sigue siendo la de la variable longitud previa a hacer el attach.

Lo anterior ocurre pues ya existe una variable de enterno con el mismo nombre de alguna variable del data.frame y al hacer uso del attach esta se engancha al data.frame. Esto deja innacesible la variable la variable del data.frame.

## Comando with

El comando with permite ejecutar una o varias instrucciones sobre las variables de un dataframe accediendo a ellas solamente por su nombre, sin necesidad de utilizar attach. Resulta particularmente útil para realizar cálculos con las variables dentro de un dataframe.

Si, por ejemplo, queremos calcular la densidad de los objetos cuyas medidas figuran en el dataframe anterior, podemos utilizar la siguiente sintaxis

```{r}
with(medidas,{
  volumen=longitud*pi*(diametro/2)^2  # Calcula el volumen de los objetos
  densidad=peso/volumen               # Calcula su densidad
  densidad                            # Muestra los valores de densidad
})
```
La estructura que se acabo de definir no modifica la el contenido del data.frame medidas.  

```{r}
medidas
```

Si lo que se quiere es incluir la densidad dentro del data.frame medidas deberíamos proceder del siguiente modo:

```{r}
medidas$densidad=with(medidas,{
  volumen=longitud*pi*(diametro/2)^2  # Calcula el volumen de los objetos
  densidad=peso/volumen               # Calcula su densidad
  densidad                            # Muestra los valores de densidad
})
medidas # Mostramos el dataframe 'medidas'. Ahora sí que contiene la densidad
```

## Subconjuntos de un dataframe

La función subset() nos permite seleccionar una parte del data.frame. Por ejemplo, si deseamos crear dos dataframes nuevos, uno solo con los hombres y otro con las mujeres utilizaríamos:

```{r}
hombres=subset(misDatos,sexo=="H")
hombres

mujeres=subset(misDatos,sexo=="M")
mujeres
```

## Elaboración de selecciones más complejas

Sujetos que sean hombres y tengan más de 30 años (la condición “ y ” se especifica mediante el símbolo “ & ”):

```{r}
mayores=subset(misDatos,sexo=="H" & edad>30)
mayores
```

Sujetos que tengan menos de 25 o más 30 años (la condición “ o ” se expresa mediante la línea vertical “ | ”):

```{r}
extremos=subset(misDatos,edad<25|edad>30)
extremos
```

Podemos seleccionar además un subconjunto de variables del data.frame. Por ejemplo, si nos interesan solo la edad y el tiempo de uso del móvil de los hombres de la muestra:

```{r}
hombres=subset(misDatos,sexo=="H", select=c(edad, tiempo))
hombres
```

## Combinación de dataframes: rbind y merge

Si tenemos dos dataframes con la misma estructura (idénticas variables), pero distintos datos, podemos combinarlos pegando uno a continuación del otro mediante rbind (acrónimo de rowbind, pegar por filas):

```{r}
animales1 = data.frame(animal=c("vaca","perro","rana","lagarto","mosca","jilguero"), 
                       clase=c("mamífero","mamífero","anfibio","reptil","insecto","ave"))
animales1

animales2 = data.frame(animal=c("atún", "cocodrilo", "gato","rana"), clase=c("pez", "reptil", "mamífero","anfibio"))
animales2

animales3 = rbind(animales1,animales2)
animales3
```

El comando rbind no controla la posible aparición de casos repetidos en los dos dataframes (podemos comprobar que la rana está repetida en el dataframe ‘animales3’). La función merge() evita este problema; utilizando la opción all=TRUE ó all=FALSE (valor por defecto) se consigue que se muestren todos los datos de ambos dataframes, o solo aquellos que son comunes a ambos

```{r}
animales4=merge(animales1,animales2)
animales4

animales5=merge(animales1,animales2,all=TRUE)
animales5
```

Si los dataframes tienen estructura distinta, pero contienen variables en común que permiten identificar unívocamente a los mismos objetos en ambos conjuntos, también podemos combinarlos mediante merge():

```{r}
superficieAnimales=data.frame(animal=c("perro","tortuga","jilguero", 
                                       "cocodrilo","vaca","lagarto","sardina"),
                     superficie=c("pelo","placas óseas","plumas",
                                  "escamas","pelo","escamas","escamas"))
superficieAnimales

merge(animales3,superficieAnimales) # Muestra sólo los animales comunes a ambos dataframes

merge(animales3,superficieAnimales, all.x=TRUE) # Muestra todos los animales del primer dataframe.

merge(animales3,superficieAnimales, all.y=TRUE) # Muestra todos los animales del segundo dataframe.

merge(animales3,superficieAnimales, all=TRUE) # Muestra todos los animales de ambos dataframes.
```
Como vemos, cuando en la combinación de dataframes faltan datos, se rellenan los huecos con valores perdidos (NA)

## Ordenación de dataframes

Para ordenar un dataframe hemos de aplicar la función order() al elemento o elementos por el que queramos ordenar, y utilizar el resultado de esta función como índice del dataframe.

Por ejemplo, si queremos ordenar el data.frame animales1 por orden alfabético de animales, haríamos:


```{r}
ordenacion=order(animales1$animal)
ordenacion  # Posiciones dentro del dataframe 'animales1' de los animales ordenados alfabéticamente

animales1=animales1[ordenacion,]  # Se reordenan las filas del dataframe animales1
animales1
```

de modo equivalente, en una línea de código:

```{r}
animales1=animales1[order(animales1$animal),]  
```




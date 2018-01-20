Se pide crear una nueva clase de tipos, llamada Coleccion, para representar colecciones de datos de cualquier tipo, 
donde los tipos pertenecientes a esta clase tendrán el siguiente comportamiento:

esVacia: función para saber si la colección está vacía.
insertar: insertará un nuevo elemento en la colección.
primero: devolverá el primer elemento de la colección.
eliminar: eliminará un elemento de la colección.
size: devolverá el número de elementos de la colección.

Algunas de las funciones anteriores variarán su implementación en función del tipo de colección particular que sea 
instancia de la clase Coleccion. Por ello, se pide crear dos instancias diferentes de esta clase para los dos nuevos 
tipos de datos que se presentan a continuación:

data Pila a = Pil [a] deriving Show
data Cola a = Col [a] deriving Show




-----------------------------------------------------------------------------------------------------------------


Se quiere desarrollar un sistema para dar soporte a un repositorio de librerías de un lenguaje de programación. Una librería 
en este lenguaje de programación se puede identificar por un nombre (representado como una cadena de caracteres) y una versión. 
Las versiones a su vez están compuestas de dos números: major version y minor version. Textualmente se representan separados por 
un punto: 5.1. El major version es el número a la izquierda del punto, el minor version es el número a la derecha.
El sistema almacena las librerías físicamente en disco y lleva un control de qué librerías hay en el repositorio. Para ello
 se desea poder tener las librerías ordenadas. Se pide:
* Implementar las clases necesarias para poder mantener ordenadas las librerías. En el caso de dos librerías con nombres diferentes, 
 deben ordenarse por orden alfabético del nombre. En el caso de dos versiones de la misma librería, deben ordenarse por el número de 
 versión. Aparecerá antes la librería con un número de major version más bajo, o si tienen igual major version, la que tenga el minor 
 version más bajo. Por ejemplo:

Orden correcto:
docker 2.1, docker 2.2, docker 3,2, mtt 3.3
ansible 1.2, ansible 1.21, ruby 2.0
Orden incorrecto:
docker 2.1, docker 1.3
mtt 3.1, docker 2.1
 
*Implementar una clase especial Compatible con una función que permita determinar si dos versiones de la misma librería son compatibles 
 entre sí. Dos versiones de la misma librería son compatibles si su major version coincide y sólo difieren en el minor version. 
 Por ejemplo:

docker 2.1 y docker 2.3 serían compatibles
doker 2.1 y docker 3.2 no serían compatibles
docker 2.1 y mtt 2.3 no serían compatibles porque no es la misma librería
 
*Implementar una función que dada una lista de librerías y una librería devuelva todas las librerías de la lista que son compatibles 
 con la librería dada. Se valorará el uso de los tipos de datos adecuados para representar el dominio del problema. No es necesario 
 implementar ningún algoritmo de ordenación. 






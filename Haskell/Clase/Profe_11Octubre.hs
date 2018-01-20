Se pide crear una nueva clase de tipos, llamada Coleccion, para representar colecciones de datos de cualquier tipo, 
donde los tipos pertenecientes a esta clase tendr�n el siguiente comportamiento:

esVacia: funci�n para saber si la colecci�n est� vac�a.
insertar: insertar� un nuevo elemento en la colecci�n.
primero: devolver� el primer elemento de la colecci�n.
eliminar: eliminar� un elemento de la colecci�n.
size: devolver� el n�mero de elementos de la colecci�n.

Algunas de las funciones anteriores variar�n su implementaci�n en funci�n del tipo de colecci�n particular que sea 
instancia de la clase Coleccion. Por ello, se pide crear dos instancias diferentes de esta clase para los dos nuevos 
tipos de datos que se presentan a continuaci�n:

data Pila a = Pil [a] deriving Show
data Cola a = Col [a] deriving Show




-----------------------------------------------------------------------------------------------------------------


Se quiere desarrollar un sistema para dar soporte a un repositorio de librer�as de un lenguaje de programaci�n. Una librer�a 
en este lenguaje de programaci�n se puede identificar por un nombre (representado como una cadena de caracteres) y una versi�n. 
Las versiones a su vez est�n compuestas de dos n�meros: major version y minor version. Textualmente se representan separados por 
un punto: 5.1. El major version es el n�mero a la izquierda del punto, el minor version es el n�mero a la derecha.
El sistema almacena las librer�as f�sicamente en disco y lleva un control de qu� librer�as hay en el repositorio. Para ello
 se desea poder tener las librer�as ordenadas. Se pide:
*�Implementar las clases necesarias para poder mantener ordenadas las librer�as. En el caso de dos librer�as con nombres diferentes, 
 deben ordenarse por orden alfab�tico del nombre. En el caso de dos versiones de la misma librer�a, deben ordenarse por el n�mero de 
 versi�n. Aparecer� antes la librer�a con un n�mero de major version m�s bajo, o si tienen igual major version, la que tenga el minor 
 version m�s bajo. Por ejemplo:

Orden correcto:
docker 2.1, docker 2.2, docker 3,2, mtt 3.3
ansible 1.2, ansible 1.21, ruby 2.0
Orden incorrecto:
docker 2.1, docker 1.3
mtt 3.1, docker 2.1
�
*Implementar una clase especial Compatible con una funci�n que permita determinar si dos versiones de la misma librer�a son compatibles 
 entre s�. Dos versiones de la misma librer�a son compatibles si su major version coincide y s�lo difieren en el minor version. 
 Por ejemplo:

docker 2.1 y docker 2.3 ser�an compatibles
doker 2.1 y docker 3.2 no ser�an compatibles
docker 2.1 y mtt 2.3 no ser�an compatibles porque no es la misma librer�a
�
*Implementar una funci�n que dada una lista de librer�as y una librer�a devuelva todas las librer�as de la lista que son compatibles 
 con la librer�a dada. Se valorar� el uso de los tipos de datos adecuados para representar el dominio del problema. No es necesario 
 implementar ning�n algoritmo de ordenaci�n. 






# Consumiendo un API REST

En este video se va a aprender una seccion de flutter la cual es consultar APIs desde internet algo que cualquier aplicacion debe tener si no lo tiene desperdiciamos recursos en esta clase se va a aprender que es una clase y como crear y que tipos de datos tendra 

## Clases

Las clases son con como contenedores que resive una estructura de datos determinadas para esto usaremos el siguiente ejemplo:

![img](Clases_Ejemplo.png)

Ahi se puede ver en el ejemplo que la clase funciona como un estandar de datos en donde podemos determinar como estara estructurada esta de manera individual y tambien podemos crear N cantidad de objectos de esa clase

## Crear Clases

Para crear una clase en dart usamos la palabra reservada "class " seguido del nombre de clase que queremos poner este debe estar en mayuscula 

    Class Empresa{

    }

Ya con esto tenermos la clase creada ahora se tiene que utilizar de la siguiente forma dirijiendonos al Widget principal de la aplicacion y creamos la variable de tipo _Empresa(El _ se usa para identificar que la variable es local en la clase) indicamos que la variable de es de tipo empresa 

## Llamar Instancia de clase  

llmaremos a la clase de tipo empresa escribiendo su nombre seguido por el nombre de la empresa que queremos crear  de esta manera 

    Empresa _facebook = new Empresa 

de esta forma llamamos al objecto empresa creando la instacia y indicando que es de tipo New con de tipo empresa 

### Observacion 

Una clase en dart es basicamente un widget por ejemplo tomemos la variable tipo Text 

    Text _nombre = new Text("Jose");

lo que puede ver es que se esta creando una instacia de la variable de tipo texto en la cual le pones el nombre de _nombre y cuando se llama esa clase en child se puede ver que lo imprime normal dentro de esta clase de tipo texto tambien se le puede insertar estilos de textos.

## Crear Widget de tipo Texto 

La palabra reserva de dart "Text " es una clase en la cual se pueden llenar atributos dentro de ella para luego ser llamada por un child para que se escriba el texto en pantalla y se escribe de la siguiente forma 

    Text _nombre = new Text("Hernesto",style: TextStyle(fontSize: 40),);

Ahi se observa que creamos una nueva instacia de tipo texto la cual recibe los parametros dentro de los ()

## Crear datos dentro de la clase 

Para crear los datos que nesecita una clase se nesecita primero escribir el tipo de dato que recibira 

class Empresa {
  String? nombre;
  String? propietario;
  int? ingresoAnu;
}

como se puede los datos que requiere la clase puede distinto y tambien toca poner ? para decir que el dato puede ir nulo en dart

## Crear constructor

Seguidp dentro de la clase toca hacer un constructor con el mismo nombre de la clase dentro de los () especidicamos los datos dentro del constructor seguido de las {} que construyen los datos que requiere el cosntructor de la clase tambien los datos dentro de la () nesecitan el ?

class Empresa {
  String? nombre;
  String? propietario;
  int? ingresoAnu;

   Empresa(String? nom, String? pro, int? ing){
    nombre = nom;
    propietario = pro;
    ingresoAnu = ing;
   }
}

## Llamar clase 

Para llamar una clase requeiere escribir la instacia de la clase que creamos luego de un . que nos especifica que dato estamos llamando 

    _facebook.nombre

asi seria el llamdado de clase 

## Concluciones 

lo que se puede ver el video es la importancia de las clases para el consumo de datos de una API que vayamos a consultar de internet.
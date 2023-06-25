# Filas, Columnas y Botones 

## **Introducion**

Cualquier aplicacion movil se puede saparar en filas y columnas, estas se pueden desde esta perspectiva
<br>
<br>

### **Column**

Es un elementeo que va dentro del body y este se puede dentro de este debe ir un children, que en su interior lleva los widgets, lo que hace este elemento es poner los widgets de textos en columnas juntas 

**Ejemplo**

    body: Column(
        children:<Widget>[
            Text("Hola1"),
            Text("Hola2")
        ],
    )
<br>

### **Row**

Es un elemento igual al Column pero este hace lo opuesto al Column
    
**Ejemplo**

    body: Row(
        children:<Widget>[
            Text("Hola1"),
            Text("Hola2")
        ],
    )
<br>

### **MainAxisAlignment**

Las filas y la columnas tiene un eje principal y un eje crucado para hacer esto se escribe mainAxisAlignment que recibe un MainAxisAlignment despues de este se ponemos un punto para poner el eje de la columna y es asi.

**Ejemplo**

    body: Row(
        mainAxisAlignment:MainAxisAlignment.center 
        children:<Widget>[
            Text("Hola1"),
            Text("Hola2")
        ],
    )

    mainAxisAlignment:MainAxisAlignment.start //Organiza los elementos en el inicio
    mainAxisAlignment:MainAxisAlignment.end //Organiza los elementos en el final
    mainAxisAlignment:MainAxisAlignment.start //Organiza los elementos en el inicio
    mainAxisAlignment:MainAxisAlignment.spaceAround //Rellene el espacio que tiene cada contenido
    mainAxisAlignment:MainAxisAlignment.spaceAround //Ubica todo el espacio entre los elementos 
    mainAxisAlignment:MainAxisAlignment.spaceEvely //Lo que hace es igualar los espacios entre los elementos

Todo esto se puede aplicar a Column pero se vera de forma vertical

El center es para centrar el eje de la columna que puede medir todo el alto de la pantalla y si no queremos que mida todo el alto de la pantalla escribimos la opcion de 
<br>

-**crossAxisAlignment**
    Lo que hace crossAxisAlignment hace referencia al otro eje de organizacion de los elementos
<br>

-**mainAxisSize** 
Abajo que recibe un mainAxisSize: MainAxisSize.min que lo que hace esto es reducier o maximizar la pantalla posible de la pantalla
    
### *Ejemplo*

    body: Row(
        mainAxisAlignment:MainAxisAlignment.center 
        mainAxisSize:mainAxisSize.min
        children:<Widget>[
            Text("Hola1"),
            Text("Hola2")
        ],
    )
<br>

-**Context**
El contexto es un elemento avanzado que representa toda la aplicacion no es lo mismo un contexto de un widget que el del scafolt princicpal 

# Button
    
Nota: Las columnas se adaptan a lo que tengan adentro

# AnimatedContainer

En este video se veran ejercicios de animacion, animaremos un contenedor

lo que hacemos es crear un contener en el body con un 
    
    child: Containar(width: 100, //tamaño del contenedor
            height: 100, 
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 0, 13, 255), //Color del contenedor
          ),)

## Redondear bordes

para redondear un border en flutter se usa la propiedad en el body de "BoxDecoration" la cual en su interior contiene el borderRadius y queda asi ojo el BoxDecoration se apropia del contenedor del contenedor

    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 0, 13, 255), //Colordel contenedor
    )

## Ejercicios de animacion 

En el ejercicio haremos una animacion del contenedor que este cambie de color y forma con solo precionar un boton.

Primero creamos unas variables donde contenederos el contenedor que habra por defecto
    
  double _width = 100.0; //alto
  double _height = 100.0; //ancho
  Color _color = Color.fromARGB(255, 0, 0, 0); //color del contenedor 
  BorderRadius _borderRadius = BorderRadius.circular(1000); //Borde del contenedor puede ir a 1000

despues la funcion que va a hacer el cambio aleatorio del contenedor asi

    void _cambiarContainer(){ //Funcion que hace el cambio de estado del contenedor que llamamos 
    final random = Random(); // Clase final que llama a Ramdom para generar los numeros 
      _width = random.nextInt(350).toDouble(); //llamamos a la clase ramdon y especificamos que genere un numero tipo int aleatorio de maximo 350 
      _height = random.nextInt(350).toDouble();
      _color = Color.fromARGB(random.nextInt(255), random.nextInt(255), random.nextInt(255), random.nextInt(255));
      _borderRadius = BorderRadius.circular(random.nextInt(255).toDouble());
      setState(() {} //Funcion para actualizar el estado rapido
    );
  }

En el widget del Scaffold en el body que contiene Column donde se guardan los contenerdores cambiantes junto al boton de cambio

    body:Column(
        children: [
          Expanded(
            child: Center(
              child: AnimatedContainer( //Contenedor en el body //el AnimatedContainer guarda contenedores que pueden estar animados requiere de un duration
                duration: Duration(milliseconds: 500), //Especificando la duracuion de la trascicion del cambio 
                curve: Curves.bounceOut, //como queremos que sea el cambio 
                width: _width, //tamaño del contenedor
                height: _height, 
                decoration: BoxDecoration(
                  color: _color, //Color del contenedor
                  borderRadius: _borderRadius, //llamando a los valores por defecto 
                ),
              ),
            ),
          ),
          MaterialButton( 
            onPressed: _cambiarContainer, //llamammos a la funcion principal que hace el cambio del los contenedores
            child: Text("Container"),
          )
        ],
      ),



# Menú Lateral - Drawer (Curso de Flutter Gratis)

un drawer en una ventana lateral que tiene una aplicacion y esto ya esta incluido en el Scaffold de nuestra aplicacion en donde lo llamamos como si fuera un widget y donde lo llamamos asi en el scaffold es un widget mas del moton 

    home: Scaffold(
        appBar: AppBar(
          title: const Text("Menu lateral- Drawer"),
        ),
        body: Center(
          child: const Text("Hola mundo"),
        ),
        drawer: Drawer(
          
        ),
    ),

tambien lo podemos personalizar como los demas widgets

    drawer: Drawer(
          child: Container(
            color: Colors.black ,
        ),
    ),

    drawer: Drawer(
          child: Container(
            color: const Color.fromARGB(255, 255, 255, 255) ,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(50),
                  child: Image.network("https://cdn.create.vista.com/api/media/small/389574928/stock-photo-letter-logo-design-initial-letter-linked-circle-uppercase-monogram-logo"),
                )
              ],
            ),
          ),
        ),


Expanded(child: Container()), 

expanded toma todo el contenido de arriba para bajarlo tomado todo el espacio disponible como vacio

            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(50),
                  child: Image.network("https://cdn.create.vista.com/api/media/small/389574928/stock-photo-letter-logo-design-initial-letter-linked-circle-uppercase-monogram-logo"),
                ),
                Text("Santiago Lopez", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(20),
                  color:  const Color.fromARGB(255, 85, 85, 85),
                  width: double.infinity,
                  child: Text("Inicio"),
                ),
                Expanded(child: Container()),
                Container(
                  
                  padding: const EdgeInsets.all(20),
                  color:  const Color.fromARGB(255, 85, 85, 85),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Inicio"),
                ),
              ],



el alignment: Alignment.center, sirve para el contenido de un contenedor como un texto 
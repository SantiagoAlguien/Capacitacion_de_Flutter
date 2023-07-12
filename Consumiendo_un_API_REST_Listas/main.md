import 'package:flutter/material.dart';
void main() => runApp( MiApp());
class MiApp extends StatefulWidget {
  @override
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {

  List<Persona> _personas = [ //Lista de datos en flutter se crea con Lista y el <> especifica la clase que creamos la lista
    Persona("Jose", "Gomez", "+ 342442432"), //Se puede observar la lista de personas 
    Persona("Maria", "Lopez", "+ 876543210"),
    Persona("Juan", "Rodriguez", "+ 123456789"),
    Persona("Ana", "Martinez", "+ 987654321"),
    Persona("Carlos", "Perez", "+ 555555555")
  ]; 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Material app",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Material app Bar"),
          ),
          body:ListView.builder( //Escribir lista de personas en el body 
            itemCount: _personas.length ,
            itemBuilder: (context, index){
              return ListTile(
                onLongPress: (){ //Precionar con tiempo prolongado 
                  this._borrarPersona(context, _personas[index]); //Funcion a la cual estamos llamando 
                },
                title: Text(_personas[index].name.toString()+ " " + _personas[index].lastname.toString()), //Nombres en grande 
                subtitle: Text(_personas[index].phone.toString()), //Subtitulo 
                leading: CircleAvatar( //Insertando un circulo al lado de los nombres de la lista
                  child: Text(_personas[index].name.toString().substring(0,1)), //Especificando que la primera letra aparezca en el circulo 
                ),
                trailing: Icon(Icons.arrow_forward_ios), //Fecha en cada nombre 
              );
            },
          )
        ),
      ),
    );
  }

  void _borrarPersona(context, Persona persona){
    showDialog(
      context: context, 
      builder: (_)=> AlertDialog(
        title: Text("Eliminar contacto"),
        content: Text("¿Estas seguro de eliminar a " + persona.name.toString() + "?"),
        actions: [
          MaterialButton(
            onPressed: (){
              Navigator.pop(context);
          }, child: Text("Cancelar")),
          MaterialButton(
            onPressed: (){
              print(persona.name.toString());
              this.setState(() {
                this._personas.remove(persona);  
              });
              Navigator.pop(context);
          }, child: Text("Borrar ", style: TextStyle(color: Colors.red),)),
        ],
      )
    );
  }
}

class Persona{
  String? name;
  String? lastname;
  String? phone;

  Persona( name,  lastname,  phone){
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
  }
}
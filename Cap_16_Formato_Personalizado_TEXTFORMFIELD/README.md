# Formato Personalizado en los TEXTFORMFIELD

Usaremos un formato de texto para determinar como va a funcionar un TextFormField donde guardamos los textro que ingresa el usuario y puede tener varios estilos como si fuera un cualquier widget

Ejemplo del widget

    Container _InputName() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Su nombre"
        ),
        style: const TextStyle(fontSize: 20),
      ),
    );
    }

## inputFormatters

es la forma en la que podemos poner  un formato a este input ya hay una libreria que para determinar el formato de texto que queremos que tenga el input y esta es https://pub.dev/packages/mask_text_input_formatter debemos serguir la instruciones de la importaciones correctamente para deteerminar el formato.

ejemplo

    var numerFormatter = MaskTextInputFormatter(mask: '####-####-####', filter: { "#": RegExp(r'[0-9]') }); //Esta es la variable para determinar el formato caracteres que va a tener nuestro input

    Container _InputCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        inputFormatters: [numerFormatter], //Llamamos al varianble que contiene el formato de la tarjeta
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(border: InputBorder.none,
        hintText: "00000 00000 00000"
        ),
        style: const TextStyle(fontSize: 20),
      ),
    );
    }

Esto nos ayuda a determianr el numero de caracteres qure podemos insertar en los inputs


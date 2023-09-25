import 'package:flutte_aplicacion/widgets/formulario_pago.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FromCard extends StatefulWidget {
  const FromCard({super.key});

  @override
  State<FromCard> createState() => _FromCardState();
}

class _FromCardState extends State<FromCard> {

  var numberCard = MaskTextInputFormatter(mask: '####-####-####', filter: { "#": RegExp(r'[0-9]') }); //Esta es la variable para determinar el formato caracteres que va a tener nuestro input tambien para determinar que tipo de numeros va a recibir
  var numberCode = MaskTextInputFormatter(mask: '###', filter: { "#": RegExp(r'[0-9]') }); 
  var InputDate = MaskTextInputFormatter(mask: '##/##', filter: { "#": RegExp(r'[0-9]') }); 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.network("https://www.bbva.com.co/content/dam/public-web/colombia/images/blog/tarjetas/cual-es-numero-de-tarjeta-de-credito.im1598289581557im.png?imwidth=1600",width: 200,),
            const SizedBox(height: 60,),
            _InputName(),
            const SizedBox(height: 20,),
            _InputCard(),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: _InputDate(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: _inputCode(),
                )
            ],),
            Container(
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 30,
              child: MaterialButton(
                color: Color.fromARGB(255, 5, 169, 219),
                onPressed: (){},
                child: Text("Pagar"),
              ),
            )
          ],
        ),
      ),
    );
  }



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

  Container _InputCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        inputFormatters: [numberCard], //Llamamos al varianble que contiene el formato de la tarjeta
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(border: InputBorder.none,
        hintText: "00000 00000 00000"
        ),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }


  Container _InputDate() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        inputFormatters: [InputDate],
        decoration: const InputDecoration(
          hintText: "01/24",
          border: InputBorder.none,
          ),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }

  Container _inputCode() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        inputFormatters: [numberCode],
        decoration: const InputDecoration(
          hintText: "000",
          border: InputBorder.none,
          ),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
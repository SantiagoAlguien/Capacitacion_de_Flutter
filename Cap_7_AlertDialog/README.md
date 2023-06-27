# AlerDialog

    Container(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all<Color>(Colors.black)
            ) ,
            child: Text(
              "Suscribirme a este canal",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              mostrarAlerta(context);
            },
          ),
    ),
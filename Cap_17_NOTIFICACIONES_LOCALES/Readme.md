# NOTIFICACIONES LOCALES

para poder hacer notificaciones locales tenermos que hacer la importacion de un paquete flutter_local_notifications: ^15.1.1 y lo insertamos en el archivo pubspec.yaml en la seccion de introduccion a las notificaciones

    dependencies:
    flutter_local_notifications: ^15.1.1

Luego de eso creamos un archivo notification_service que tendra la logica de las notificaciones de la aplicacion 

    import 'package:flutter_local_notifications/flutter_local_notifications.dart'; //importamos la libreria de las notificaciones

    final FlutterLocalNotificationsPlugin   flutterLocalNotificationsPlugin =     FlutterLocalNotificationsPlugin(); //llamamos un final que contiene la instacia del paquete de las notificaciones

    Future<void> iniNotification() async { //es una funcion que devuelve un future  para iniciar en la aplicaicion

      const AndroidInitializationSettings   initializationSettingsAndroid =   AndroidInitializationSettings('app_icon'); //esta cons contiene el icono de la imagen de la noficiacion en el icono

      const DarwinInitializationSettings    initializationSettingsDarwinIOS =  DarwinInitializationSettings(); //esta const contiene la imagen para mostrar en IOS

      const InitializationSettings initializationSettings =     InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwinIOS
      );// El InitializationSettings es para iniciar las variables de inicializacion

      await flutterLocalNotificationsPlugin.initialize  (initializationSettings); // aqui llamamos a las variables
    }

Luego de eso editamos las funcion de main de la aplicacion y la cambiamos asi

    void main() async{

        WidgetsFlutterBinding.ensureInitialized();
        await iniNotification(); esto inicializa la notificanes de la apliacion

        runApp(const MiApp());
    }

despues para hacer la logica del envio de las notificaciones en la seccion de nofication services

    Future<void> mostrarNotificacion() async{ //funciones asincontra con los datos de la notificacion
      const AndroidNotificationDetails  androidNotificationDetails = 
      AndroidNotificationDetails(
      "your_channel_id",
      "your_channel_name",
      importance: Importance.max, //determinamos en la configuracion como que podemos motrar la propieda de importacia maxima para mostrar en la pantalla
      priority: Priority.high //y la prioridad es alta 
      ); //insertamos los datos de la notificacion a mostrar en android

      const NotificationDetails notificationDetails =   NotificationDetails(
        android: androidNotificationDetails
      ); // Llamamos en la seccion de android a la const androidNotificationDetails

      await flutterLocalNotificationsPlugin.show(1, 'Titulo de  la notficacion', 'Esta es una notificacion de prueba para mostrar en el canal', notificationDetails); //Datos de las notificaciones
    }
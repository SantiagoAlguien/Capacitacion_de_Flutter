import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin(); 

Future<void> iniNotification() async {

  const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

  const DarwinInitializationSettings initializationSettingsDarwinIOS = DarwinInitializationSettings();

  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwinIOS
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}

Future<void> mostrarNotificacion() async{
  const AndroidNotificationDetails androidNotificationDetails = 
  AndroidNotificationDetails(
  "your_channel_id",
  "your_channel_name",
  importance: Importance.max,
  priority: Priority.high
  );

  const NotificationDetails notificationDetails = NotificationDetails(
    android: androidNotificationDetails
  );

  await flutterLocalNotificationsPlugin.show(1, 'Titulo de la notficacion', 'Esta es una notificacion de prueba para mostrar en el canal', notificationDetails);
}
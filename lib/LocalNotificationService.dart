import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:meats/routes/app_routes.dart';
import 'package:path/path.dart';

class LocalNotificationService {

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// Instance of Flutternotification plugin
   final FlutterLocalNotificationsPlugin _notificationsPlugin =
  FlutterLocalNotificationsPlugin();

  final AndroidInitializationSettings _androidInitializationSettings =  AndroidInitializationSettings("@drawable/img_ellipse7_24x24");

   void initialiseNotifications() async {
    // Initialization setting for android
     InitializationSettings initializationSettings =
    InitializationSettings(
        android: _androidInitializationSettings);
  await _notificationsPlugin.initialize(
      initializationSettings,
      // to handle event when we receive notification
      onDidReceiveNotificationResponse: (details) {
        if (details.input != null) {
          navigatorKey.currentState?.pushNamed(AppRoutes.socialHomePage);

          // BuildContext context;
          // Navigator.pushNamed(context, AppRoutes.socialPostMenuScreen);
        }
      },
    );
  }

  void sendNotification(String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails = const AndroidNotificationDetails(
        "channelId",
        "channelName",
        importance:Importance.max,
        priority: Priority.high);

    NotificationDetails notificationDetails = NotificationDetails( android: androidNotificationDetails);
    await _notificationsPlugin.show(
      0,
      title,
      body,
      notificationDetails,
    );
  }

  void sendSceduleNotification(String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails = const AndroidNotificationDetails(
        "channelId",
        "channelName",
        importance:Importance.max,
        priority: Priority.high);

    NotificationDetails notificationDetails = NotificationDetails( android: androidNotificationDetails);
    await _notificationsPlugin.periodicallyShow(0, title, body, RepeatInterval.everyMinute, notificationDetails);
  }


}

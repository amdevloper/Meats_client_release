import 'package:flutter/material.dart';
import '../../../../routes/app_routes.dart';
import 'package:flutter/services.dart' show PlatformException;

import 'object_box.dart';
import 'package:uni_links/uni_links.dart';


late ObjectBox objectBox;

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  initUniLinks();
  objectBox = await ObjectBox.create();
  runApp( MyApp());
}

void initUniLinks()async{
  try{
    Uri? initialLink = await getInitialUri();
    print(initialLink);
  } on PlatformException {
    print('platfrom exception unilink');
  }
}



// void initUniLinks() async {
//   // Ensure that the app is ready to handle deep links
//   await getInitialUri();
//
//   // Set up a stream subscription to handle deep links when the app is running
//   uriSubscription = uriLinkStream.listen((Uri uri) {
//     // Handle the deep link here
//     handleDeepLink(uri);
//   });
// }

void handleDeepLink(Uri uri) {
  // Process the deep link URI and navigate accordingly
  // You can extract parameters or perform specific actions based on the deep link data
}






class MyApp extends StatelessWidget {
   MyApp({super.key});

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'Meats',
      initialRoute: AppRoutes.welcomeScreen,
      routes: AppRoutes.routes,
    );
  }
}

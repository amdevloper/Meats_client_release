import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../account_page/account_page.dart';
import '../menu1_page/menu1_page.dart';
import '../my_orders_tab_container_page/my_orders_tab_container_page.dart';
import '../new_notifications_page/new_notifications_page.dart';
import '../social_home_page/social_home_page.dart';

// ignore_for_file: must_be_immutable
class NewNotificationsContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.newNotificationsPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.newNotificationsPage;
      case BottomBarEnum.Myorders:
        return AppRoutes.myOrdersTabContainerPage;
      case BottomBarEnum.Social:
        return AppRoutes.socialHomePage;
      case BottomBarEnum.Menu:
        return AppRoutes.menu1Page;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.newNotificationsPage:
        return NewNotificationsPage();
      case AppRoutes.myOrdersTabContainerPage:
        return MyOrdersTabContainerPage();
      case AppRoutes.socialHomePage:
        return SocialHomePage();
      case AppRoutes.menu1Page:
        return Menu1Page();
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }

  @override
  void onInit(BuildContext context) {}
}

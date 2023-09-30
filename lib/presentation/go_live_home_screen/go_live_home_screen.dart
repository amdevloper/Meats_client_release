import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_image_view.dart';
import '../account_page/account_page.dart';
import '../go_live_home_screen/widgets/listellipseseven_item_widget.dart';
import 'package:flutter/material.dart';

import '../menu1_page/menu1_page.dart';
import '../my_orders_tab_container_page/my_orders_tab_container_page.dart';
import '../new_notifications_page/new_notifications_page.dart';
import '../social_home_page/social_home_page.dart';

// ignore_for_file: must_be_immutable
class GoLiveHomeScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: AppbarSubtitle3(
                    text: "Go Live", margin: getMargin(left: 20)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(18.00),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(left: 21, top: 18, right: 21, bottom: 17),
                      onTap: () => onTapNotification(context))
                ]),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Padding(
                                    padding: getPadding(
                                        left: 24, top: 10, right: 20),
                                    child: ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return Container(
                                              height: getVerticalSize(1.00),
                                              width: size.width,
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray300));
                                        },
                                        itemCount: 8,
                                        itemBuilder: (context, index) {
                                          return ListellipsesevenItemWidget(
                                              onTapPartialsTables: () =>
                                                  onTapPartialsTables(context));
                                        })),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    margin: getMargin(top: 10),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300))
                              ])),
                      Spacer()
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            }),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                onTap: () {
                  onTapBtnFloatingactionbutton(context);
                },
                child: CustomImageView(
                    svgPath: ImageConstant.imgPlus,
                    height: getVerticalSize(25.00),
                    width: getHorizontalSize(25.00)))));
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

  onTapPartialsTables(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  onTapBtnFloatingactionbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.crateGroupScreen);
  }

  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}

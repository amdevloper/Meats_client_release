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
import '../groups_screen/widgets/listellipseseven1_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class GroupsScreen extends StatelessWidget {
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
                      onTap: () => onTapNotification1(context))
                ]),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 24, top: 19, right: 20),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300));
                              },
                              itemCount: 9,
                              itemBuilder: (context, index) {
                                return Listellipseseven1ItemWidget(
                                    onTapPartialsTables: () =>
                                        onTapPartialsTables(context));
                              })),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 10),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300))
                    ])),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {
            //   Navigator.pushNamed(
            //       navigatorKey.currentContext!, getCurrentRoute(type));
            // }),
            // floatingActionButton: CustomFloatingButton(
            //     height: 50,
            //     width: 50,
            //     onTap: () {
            //       onTapBtnFloatingactionbutton(context);
            //     },
            //     child: CustomImageView(
            //         svgPath: ImageConstant.imgPlus,
            //         height: getVerticalSize(25.00),
            //         width: getHorizontalSize(25.00)))
        ));
  }

  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.newNotificationsPage;
  //     case BottomBarEnum.Myorders:
  //       return AppRoutes.myOrdersTabContainerPage;
  //     case BottomBarEnum.Social:
  //       return AppRoutes.socialHomePage;
  //     case BottomBarEnum.Menu:
  //       return AppRoutes.menu1Page;
  //     case BottomBarEnum.Account:
  //       return AppRoutes.accountPage;
  //     default:
  //       return "/";
  //   }
  // }
  //
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.newNotificationsPage:
  //       return NewNotificationsPage();
  //     case AppRoutes.myOrdersTabContainerPage:
  //       return MyOrdersTabContainerPage();
  //     case AppRoutes.socialHomePage:
  //       return SocialHomePage();
  //     case AppRoutes.menu1Page:
  //       return Menu1Page();
  //     case AppRoutes.accountPage:
  //       return AccountPage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  onTapPartialsTables(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.groupChatScreen);
  }

  onTapBtnFloatingactionbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.crateGroupScreen);
  }

  onTapNotification1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}

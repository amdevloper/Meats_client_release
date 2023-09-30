import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_4.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(24.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18),
                    onTap: () => onTapArrowleft(context)),
                title: AppbarSubtitle(
                    text: "Notification", margin: getMargin(left: 14)),
                actions: [
                  AppbarSubtitle4(
                      text: "Read All",
                      margin: getMargin(left: 20, top: 4, right: 20, bottom: 2))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 14, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 22, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("Received a new order",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRobotoBold16)),
                                        Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("8:00 PM",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14))
                                      ])),
                              Container(
                                  width: getHorizontalSize(330.00),
                                  margin: getMargin(top: 7),
                                  child: Text(
                                      "You have received a new order. Please check it\nand accept that order.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 17),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 22, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("Received a new order",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRobotoBold16)),
                                        Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("8:00 PM",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(275.00),
                                      margin: getMargin(left: 20, top: 7),
                                      child: Text(
                                          "Your order has been canceled by some \nissues.",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRegular16))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 21),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 23, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Order Delivered",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold16),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("Yesterday",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14))
                                      ])),
                              Container(
                                  width: getHorizontalSize(334.00),
                                  margin: getMargin(top: 7),
                                  child: Text(
                                      "Your order is delivered to customer without any\nissue.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 21),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 23, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Received a new order",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold16),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("Yesterday",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14))
                                      ])),
                              Container(
                                  width: getHorizontalSize(330.00),
                                  margin: getMargin(top: 7),
                                  child: Text(
                                      "You have received a new order. Please check it\nand accept that order.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 17),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 23, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("Reject Order",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRobotoBold16)),
                                        Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("Yesterday",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(308.00),
                                      margin: getMargin(left: 20, top: 5),
                                      child: Text(
                                          "Order is rejected by you. due to out of stock\nitems.",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRegular16))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 21),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 23, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Order Delivered",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold16),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("Yesterday",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14))
                                      ])),
                              Container(
                                  width: getHorizontalSize(334.00),
                                  margin: getMargin(top: 7),
                                  child: Text(
                                      "Your order is delivered to customer without any\nissue.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16))
                            ])))),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {
            //   Navigator.pushNamed(
            //       navigatorKey.currentContext!, getCurrentRoute(type));
            // })
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

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}

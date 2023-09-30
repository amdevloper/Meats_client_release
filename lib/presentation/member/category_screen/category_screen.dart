import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_6.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../../../widgets/custom_floating_button.dart';
import '../../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class CategoryScreen extends StatelessWidget {
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
                    onTap: () => onTapArrowleft42(context)),
                title: AppbarSubtitle6(
                    text: "Category", margin: getMargin(left: 14)),
                actions: [
                  AppbarImage(
                      height: getSize(18.00),
                      width: getSize(18.00),
                      svgPath: ImageConstant.imgSearchBlueGray30018x18,
                      margin: getMargin(left: 21, top: 2, bottom: 4),
                      onTap: () => onTapSearch2(context)),
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(18.00),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 15, top: 2, right: 21, bottom: 2))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 14),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder100x100,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder16,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            margin: getMargin(left: 16)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder17,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            margin: getMargin(left: 16))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 29, top: 8, right: 56),
                                      child: Row(children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("Restaurants",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium14Bluegray300)),
                                        Spacer(flex: 43),
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("Bar",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium14Bluegray300)),
                                        Spacer(flex: 56),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("Pub",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium14Bluegray300))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder18,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder19,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            margin: getMargin(left: 16)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder20,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            margin: getMargin(left: 16))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 51, top: 9, right: 43),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Liqor",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium14Bluegray300),
                                        Spacer(),
                                        Text("Pharmacy store",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium14Bluegray300),
                                        Padding(
                                            padding: getPadding(left: 44),
                                            child: Text("Grocery",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium14Bluegray300))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder21,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder22,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            margin: getMargin(left: 16)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder23,
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            margin: getMargin(left: 16))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 35, top: 9, right: 46),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Ice Cream ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium14Bluegray300),
                                        Text("Provisions",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium14Bluegray300),
                                        Text("Bakery",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium14Bluegray300)
                                      ])),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgImageplaceholder24,
                                  height: getSize(100.00),
                                  width: getSize(100.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(16.00)),
                                  alignment: Alignment.centerLeft,
                                  margin: getMargin(left: 23, top: 21)),
                              Container(
                                  height: getVerticalSize(148.00),
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(top: 8),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 33, top: 2),
                                                child: Text("Meat Shop",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium14Bluegray300))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(148.00),
                                                width:
                                                    getHorizontalSize(374.00)))
                                      ]))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {}),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                onTap: () {
                  onTapBtnFloatingactionbutton(context);
                },
                child: CustomImageView(
                    svgPath: ImageConstant.imgRefreshWhiteA700,
                    height: getVerticalSize(25.00),
                    width: getHorizontalSize(25.00)))));
  }

  onTapBtnFloatingactionbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goLiveHomeScreen);
  }

  onTapArrowleft42(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSearch2(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.searchRestaurantsScreen);
  }
}

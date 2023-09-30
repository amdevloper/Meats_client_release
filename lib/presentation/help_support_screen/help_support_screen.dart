import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';

class HelpSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft44(context)),
                title: AppbarSubtitle1(
                    text: "Help Support", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 19, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("About us",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular16Gray900)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray900,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    onTap: () {
                                      onTapImgArrowright(context);
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 15, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("Terms & Conditions",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular16Gray900)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray900,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    onTap: () {
                                      onTapImgArrowrightOne(context);
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 15, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3, bottom: 1),
                                    child: Text("Privacy Policy",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular16Gray900)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray900,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    onTap: () {
                                      onTapImgArrowrightTwo(context);
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 15, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 2),
                                    child: Text("FAQ’s",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular16Gray900)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray900,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    onTap: () {
                                      onTapImgArrowrightThree(context);
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 16, bottom: 5),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300))
                    ])),
            // bottomNavigationBar: Container(
            //     width: size.width,
            //     padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
            //     decoration: AppDecoration.fillWhiteA700,
            //     child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           CustomImageView(
            //               svgPath: ImageConstant.imgRectangle,
            //               height: getVerticalSize(5.00),
            //               width: getHorizontalSize(48.00),
            //               radius:
            //                   BorderRadius.circular(getHorizontalSize(2.00)),
            //               margin: getMargin(bottom: 3))
            //         ]))
        ));
  }

  onTapImgArrowright(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }

  onTapImgArrowrightOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.termsScreen);
  }

  onTapImgArrowrightTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacyPolicyScreen);
  }

  onTapImgArrowrightThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqSScreen);
  }

  onTapArrowleft44(BuildContext context) {
    Navigator.pop(context);
  }
}

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
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class UpdateTimeScreen extends StatelessWidget {
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
                    onTap: () => onTapArrowleft29(context)),
                title: AppbarSubtitle1(
                    text: "Update Time", margin: getMargin(left: 14))),
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
                          padding: getPadding(top: 19),
                          child: Text("Update outlet timing",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold24)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Text("Monday",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold16Gray90001)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 41),
                              child: Text(
                                  "Add or modify your outlet timing here.",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular16Gray900))),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 16,
                                        top: 14,
                                        right: 16,
                                        bottom: 14),
                                    decoration: AppDecoration.outlineGray300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Start Time",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoRegular16),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray30012x6,
                                              height: getVerticalSize(12.00),
                                              width: getHorizontalSize(6.00),
                                              margin: getMargin(
                                                  left: 123,
                                                  top: 4,
                                                  right: 4,
                                                  bottom: 2))
                                        ])),
                                Container(
                                    margin: getMargin(left: 15),
                                    padding: getPadding(
                                        left: 13,
                                        top: 14,
                                        right: 13,
                                        bottom: 14),
                                    decoration: AppDecoration.outlineGray300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("AM",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRegular16Gray900),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray30012x6,
                                              height: getVerticalSize(12.00),
                                              width: getHorizontalSize(6.00),
                                              margin: getMargin(
                                                  left: 20,
                                                  top: 4,
                                                  right: 1,
                                                  bottom: 2))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 16,
                                        top: 14,
                                        right: 16,
                                        bottom: 14),
                                    decoration: AppDecoration.outlineGray300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("End Time",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoRegular16),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray30012x6,
                                              height: getVerticalSize(12.00),
                                              width: getHorizontalSize(6.00),
                                              margin: getMargin(
                                                  left: 131,
                                                  top: 4,
                                                  right: 4,
                                                  bottom: 2))
                                        ])),
                                Container(
                                    margin: getMargin(left: 15),
                                    padding: getPadding(
                                        left: 13,
                                        top: 14,
                                        right: 13,
                                        bottom: 14),
                                    decoration: AppDecoration.outlineGray300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("PM",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRegular16Gray900),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray30012x6,
                                              height: getVerticalSize(12.00),
                                              width: getHorizontalSize(6.00),
                                              margin: getMargin(
                                                  left: 22,
                                                  top: 4,
                                                  right: 1,
                                                  bottom: 2))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 20),
                              child: Row(children: [
                                CustomIconButton(
                                    height: 24,
                                    width: 24,
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgCheckmarkWhiteA700)),
                                Padding(
                                    padding:
                                        getPadding(left: 6, top: 3, bottom: 1),
                                    child: Text("Set for all weekdays.",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular16))
                              ]))),
                      CustomButton(
                          height: 48,
                          width: 335,
                          text: "Save",
                          margin: getMargin(top: 30, bottom: 5),
                          onTap: () => onTapSave(context))
                    ])),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgRectangle,
                          height: getVerticalSize(5.00),
                          width: getHorizontalSize(48.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(2.00)),
                          margin: getMargin(bottom: 3))
                    ]))));
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageTimingScreen);
  }

  onTapArrowleft29(BuildContext context) {
    Navigator.pop(context);
  }
}

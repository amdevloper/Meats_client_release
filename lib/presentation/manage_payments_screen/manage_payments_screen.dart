import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';

class ManagePaymentsScreen extends StatelessWidget {
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
                    onTap: () => onTapArrowleft32(context)),
                title: AppbarSubtitle1(
                    text: "Manage Payments", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 23),
                              child: Text("Cards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold18))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 15),
                          padding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSave,
                                    height: getSize(30.00),
                                    width: getSize(30.00),
                                    margin: getMargin(bottom: 2)),
                                Padding(
                                    padding:
                                        getPadding(left: 10, top: 5, bottom: 7),
                                    child: Text("Add Credit & Debit Card",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular16Black900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright12x6,
                                    height: getVerticalSize(12.00),
                                    width: getHorizontalSize(6.00),
                                    margin: getMargin(top: 10, bottom: 10))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(335.00),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 21, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Bank Debit Card",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray900),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("4160 XXXX XXXX 1256",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular14))
                                    ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCalculator,
                                    height: getSize(17.00),
                                    width: getSize(17.00),
                                    margin: getMargin(left: 8, top: 23)),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgDownload2,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(47.00),
                                    margin: getMargin(top: 8, bottom: 8)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright12x6,
                                    height: getVerticalSize(12.00),
                                    width: getHorizontalSize(6.00),
                                    margin: getMargin(
                                        left: 31, top: 14, bottom: 14))
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 29, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Bank Debit Card",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray900),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("4160 XXXX XXXX 1256",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular14))
                                    ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCalculator,
                                    height: getSize(17.00),
                                    width: getSize(17.00),
                                    margin: getMargin(left: 8, top: 23)),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgDownload2,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(47.00),
                                    margin: getMargin(top: 8, bottom: 8)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright12x6,
                                    height: getVerticalSize(12.00),
                                    width: getHorizontalSize(6.00),
                                    margin: getMargin(
                                        left: 31, top: 14, bottom: 14))
                              ])),
                      Container(
                          height: getVerticalSize(5.00),
                          width: size.width,
                          margin: getMargin(top: 19),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(2.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 24),
                              child: Text("Wallets",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold18))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 21),
                          padding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgComputerGray900,
                                    height: getVerticalSize(25.00),
                                    width: getHorizontalSize(23.00),
                                    margin: getMargin(left: 6, bottom: 6)),
                                Padding(
                                    padding:
                                        getPadding(left: 11, top: 7, bottom: 5),
                                    child: Text("PayPal",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular16Black900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright12x6,
                                    height: getVerticalSize(12.00),
                                    width: getHorizontalSize(6.00),
                                    margin: getMargin(top: 10, bottom: 10))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgRectangle,
                          height: getVerticalSize(5.00),
                          width: getHorizontalSize(48.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(2.00)),
                          margin: getMargin(bottom: 5))
                    ]))));
  }

  onTapArrowleft32(BuildContext context) {
    Navigator.pop(context);
  }
}

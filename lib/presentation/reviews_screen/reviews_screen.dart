import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class ReviewsScreen extends StatelessWidget {
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
                    onTap: () => onTapArrowleft30(context)),
                title: AppbarSubtitle1(
                    text: "Reviews", margin: getMargin(left: 14))),
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
                      Padding(
                          padding: getPadding(left: 20, top: 19, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Average Rating",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoBold18),
                                Spacer(),
                                CustomButton(
                                    height: 19,
                                    width: 46,
                                    text: "4.5",
                                    margin: getMargin(bottom: 3),
                                    variant: ButtonVariant.OutlineGray300,
                                    shape: ButtonShape.RoundedBorder9,
                                    padding: ButtonPadding.PaddingT1,
                                    fontStyle:
                                        ButtonFontStyle.RobotoRegular12Gray900,
                                    suffixWidget: Container(
                                        margin: getMargin(left: 4),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgStar))),
                                Padding(
                                    padding:
                                        getPadding(left: 7, top: 1, bottom: 3),
                                    child: Text("4 Reviews",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular14))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 37),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse78,
                                              height: getSize(40.00),
                                              width: getSize(40.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(20.00))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse78,
                                              height: getSize(40.00),
                                              width: getSize(40.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(20.00)),
                                              margin: getMargin(top: 66)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse78,
                                              height: getSize(40.00),
                                              width: getSize(40.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(20.00)),
                                              margin: getMargin(top: 66)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse78,
                                              height: getSize(40.00),
                                              width: getSize(40.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(20.00)),
                                              margin: getMargin(top: 66))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 12),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Text("Hanna.BO",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Black900),
                                            Padding(
                                                padding: getPadding(
                                                    left: 142, top: 3),
                                                child: Text("Sep 09, 2022",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular12))
                                          ]),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 4)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 6)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 4))
                                              ])),
                                          Container(
                                              width: getHorizontalSize(260.00),
                                              margin: getMargin(top: 9),
                                              child: Text(
                                                  "Awesome, Good quality food love to order\nagain",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14Gray600)),
                                          Padding(
                                              padding: getPadding(top: 28),
                                              child: Row(children: [
                                                Text("Hanna.BO",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16Black900),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 142, top: 3),
                                                    child: Text("Sep 09, 2022",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 4)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 6)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 4))
                                              ])),
                                          Container(
                                              width: getHorizontalSize(260.00),
                                              margin: getMargin(top: 9),
                                              child: Text(
                                                  "Awesome, Good quality food love to order\nagain",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14Gray600)),
                                          Padding(
                                              padding: getPadding(top: 28),
                                              child: Row(children: [
                                                Text("Hanna.BO",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16Black900),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 142, top: 3),
                                                    child: Text("Sep 09, 2022",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 4)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 6)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 4))
                                              ])),
                                          Container(
                                              width: getHorizontalSize(260.00),
                                              margin: getMargin(top: 9),
                                              child: Text(
                                                  "Awesome, Good quality food love to order\nagain",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14Gray600)),
                                          Padding(
                                              padding: getPadding(top: 28),
                                              child: Row(children: [
                                                Text("Hanna.BO",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16Black900),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 142, top: 3),
                                                    child: Text("Sep 09, 2022",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 4)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 6)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(9.00),
                                                    width: getSize(9.00),
                                                    margin: getMargin(left: 4))
                                              ])),
                                          Container(
                                              width: getHorizontalSize(260.00),
                                              margin: getMargin(top: 9),
                                              child: Text(
                                                  "Awesome, Good quality food love to order\nagain",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14Gray600))
                                        ]))
                              ])),
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

  onTapArrowleft30(BuildContext context) {
    Navigator.pop(context);
  }
}

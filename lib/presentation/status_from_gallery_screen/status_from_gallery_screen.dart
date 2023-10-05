import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class StatusFromGalleryScreen extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return SafeArea(top: false,
        bottom: false,
        child: Scaffold(backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(height: getVerticalSize(24.00),
                leadingWidth: 42,
                leading: AppbarImage(height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18),
                    onTap: () => onTapArrowleft39(context)),
                title: AppbarSubtitle2(
                    text: "Gallery", margin: getMargin(left: 14)),
                actions: [
                  Container(height: getVerticalSize(20.00),
                      width: getHorizontalSize(1.00),
                      margin: getMargin(left: 21, top: 3, right: 21, bottom: 1),
                      decoration: BoxDecoration(color: ColorConstant.gray900,
                          borderRadius: BorderRadius.circular(
                              getHorizontalSize(10.00)),
                          border: Border.all(color: ColorConstant.black900,
                              width: getHorizontalSize(1.00),
                              strokeAlign: BorderSide.strokeAlignCenter)))
                ]),
            body: SizedBox(width: size.width,
                child: SingleChildScrollView(child: Container(width: size.width,
                    margin: getMargin(top: 14, bottom: 5),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(height: getVerticalSize(125.00),
                              width: size.width,
                              child: Stack(alignment: Alignment.centerLeft,
                                  children: [
                                    Align(alignment: Alignment.topCenter,
                                        child: Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300))),
                                    Align(alignment: Alignment.centerLeft,
                                        child: Container(height: getSize(
                                            125.00),
                                            width: getSize(125.00),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImageplaceholder125x125,
                                                      height: getSize(125.00),
                                                      width: getSize(125.00),
                                                      alignment: Alignment
                                                          .center),
                                                  Align(alignment: Alignment
                                                      .topRight,
                                                      child: Container(
                                                          height: getSize(
                                                              24.00),
                                                          width: getSize(24.00),
                                                          margin: getMargin(
                                                              top: 10,
                                                              right: 10),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .whiteA700,
                                                              borderRadius: BorderRadius
                                                                  .circular(
                                                                  getHorizontalSize(
                                                                      12.00)),
                                                              border: Border
                                                                  .all(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  width: getHorizontalSize(
                                                                      1.00)))))
                                                ]))),
                                    Align(alignment: Alignment.center,
                                        child: Container(height: getSize(
                                            125.00),
                                            width: getSize(125.00),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse7,
                                                      height: getSize(125.00),
                                                      width: getSize(125.00),
                                                      alignment: Alignment
                                                          .center),
                                                  Align(alignment: Alignment
                                                      .topRight,
                                                      child: Container(
                                                          width: getSize(24.00),
                                                          margin: getMargin(
                                                              top: 10,
                                                              right: 10),
                                                          padding: getPadding(
                                                              left: 9,
                                                              top: 3,
                                                              right: 9,
                                                              bottom: 3),
                                                          decoration: AppDecoration
                                                              .txtOutlineWhiteA700
                                                              .copyWith(
                                                              borderRadius: BorderRadiusStyle
                                                                  .txtCircleBorder12),
                                                          child: Text("1",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium12WhiteA700)))
                                                ]))),
                                    Align(alignment: Alignment.centerRight,
                                        child: Container(height: getSize(
                                            125.00),
                                            width: getSize(125.00),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImageplaceholder109x109,
                                                      height: getSize(125.00),
                                                      width: getSize(125.00),
                                                      alignment: Alignment
                                                          .center),
                                                  Align(alignment: Alignment
                                                      .topRight,
                                                      child: Container(
                                                          width: getSize(24.00),
                                                          margin: getMargin(
                                                              top: 10,
                                                              right: 10),
                                                          padding: getPadding(
                                                              left: 8,
                                                              top: 3,
                                                              right: 8,
                                                              bottom: 3),
                                                          decoration: AppDecoration
                                                              .txtOutlineWhiteA700
                                                              .copyWith(
                                                              borderRadius: BorderRadiusStyle
                                                                  .txtCircleBorder12),
                                                          child: Text("2",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium12WhiteA700)))
                                                ])))
                                  ])),
                          Container(width: size.width,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(height: getVerticalSize(126.00),
                                        width: getHorizontalSize(125.00),
                                        child: Stack(alignment: Alignment
                                            .topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImageplaceholder126x125,
                                                  height: getVerticalSize(
                                                      126.00),
                                                  width: getHorizontalSize(
                                                      125.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                              getHorizontalSize(
                                                                  12.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .gray300,
                                                              width: getHorizontalSize(
                                                                  1.00)))))
                                            ])),
                                    Container(height: getVerticalSize(126.00),
                                        width: getHorizontalSize(125.00),
                                        child: Stack(alignment: Alignment
                                            .topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImageplaceholder6,
                                                  height: getVerticalSize(
                                                      126.00),
                                                  width: getHorizontalSize(
                                                      125.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                              getHorizontalSize(
                                                                  12.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .gray300,
                                                              width: getHorizontalSize(
                                                                  1.00)))))
                                            ])),
                                    Container(height: getVerticalSize(126.00),
                                        width: getHorizontalSize(125.00),
                                        child: Stack(alignment: Alignment
                                            .topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImageplaceholder2,
                                                  height: getVerticalSize(
                                                      126.00),
                                                  width: getHorizontalSize(
                                                      125.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                              getHorizontalSize(
                                                                  12.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .gray300,
                                                              width: getHorizontalSize(
                                                                  1.00)))))
                                            ]))
                                  ])),
                          Container(width: size.width,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(mainAxisAlignment: MainAxisAlignment
                                        .start, children: [Container(
                                        height: getSize(125.00),
                                        width: getSize(125.00),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImageplaceholder7,
                                                  height: getSize(125.00),
                                                  width: getSize(125.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                              getHorizontalSize(
                                                                  12.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .gray300,
                                                              width: getHorizontalSize(
                                                                  1.00)))))
                                            ])), Container(
                                        height: getVerticalSize(126.00),
                                        width: getHorizontalSize(125.00),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImageplaceholder8,
                                                  height: getVerticalSize(
                                                      126.00),
                                                  width: getHorizontalSize(
                                                      125.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                              getHorizontalSize(
                                                                  12.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .gray300,
                                                              width: getHorizontalSize(
                                                                  1.00)))))
                                            ]))
                                    ]),
                                    Container(height: getVerticalSize(251.00),
                                        width: getHorizontalSize(250.00),
                                        child: Stack(alignment: Alignment
                                            .topRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: getSize(125.00),
                                                      width: getSize(125.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath: ImageConstant
                                                                    .imgImageplaceholder9,
                                                                height: getSize(
                                                                    125.00),
                                                                width: getSize(
                                                                    125.00),
                                                                alignment: Alignment
                                                                    .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .topRight,
                                                                child: Container(
                                                                    height: getSize(
                                                                        24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right: 10),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        borderRadius: BorderRadius
                                                                            .circular(
                                                                            getHorizontalSize(
                                                                                12.00)),
                                                                        border: Border
                                                                            .all(
                                                                            color: ColorConstant
                                                                                .gray300,
                                                                            width: getHorizontalSize(
                                                                                1.00)))))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: getSize(125.00),
                                                      width: getSize(125.00),
                                                      margin: getMargin(
                                                          top: 2, right: 10),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath: ImageConstant
                                                                    .imgImageplaceholder10,
                                                                height: getSize(
                                                                    125.00),
                                                                width: getSize(
                                                                    125.00),
                                                                alignment: Alignment
                                                                    .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .topRight,
                                                                child: Container(
                                                                    height: getSize(
                                                                        24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    margin: getMargin(
                                                                        top: 7),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        borderRadius: BorderRadius
                                                                            .circular(
                                                                            getHorizontalSize(
                                                                                12.00)),
                                                                        border: Border
                                                                            .all(
                                                                            color: ColorConstant
                                                                                .gray300,
                                                                            width: getHorizontalSize(
                                                                                1.00)))))
                                                          ]))),
                                              Align(alignment: Alignment
                                                  .bottomLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          126.00),
                                                      width: getHorizontalSize(
                                                          125.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath: ImageConstant
                                                                    .imgImageplaceholder11,
                                                                height: getVerticalSize(
                                                                    126.00),
                                                                width: getHorizontalSize(
                                                                    125.00),
                                                                alignment: Alignment
                                                                    .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .topRight,
                                                                child: Container(
                                                                    height: getSize(
                                                                        24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right: 10),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        borderRadius: BorderRadius
                                                                            .circular(
                                                                            getHorizontalSize(
                                                                                12.00)),
                                                                        border: Border
                                                                            .all(
                                                                            color: ColorConstant
                                                                                .gray300,
                                                                            width: getHorizontalSize(
                                                                                1.00)))))
                                                          ]))),
                                              Align(alignment: Alignment
                                                  .bottomRight,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          126.00),
                                                      width: getHorizontalSize(
                                                          125.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath: ImageConstant
                                                                    .imgImageplaceholder12,
                                                                height: getVerticalSize(
                                                                    126.00),
                                                                width: getHorizontalSize(
                                                                    125.00),
                                                                alignment: Alignment
                                                                    .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .topRight,
                                                                child: Container(
                                                                    height: getSize(
                                                                        24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right: 10),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        borderRadius: BorderRadius
                                                                            .circular(
                                                                            getHorizontalSize(
                                                                                12.00)),
                                                                        border: Border
                                                                            .all(
                                                                            color: ColorConstant
                                                                                .gray300,
                                                                            width: getHorizontalSize(
                                                                                1.00)))))
                                                          ])))
                                            ]))
                                  ])),
                          Container(width: size.width,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Container(height: getSize(125.00),
                                      width: getSize(125.00),
                                      child: Stack(alignment: Alignment
                                          .topRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImageplaceholder13,
                                                height: getSize(125.00),
                                                width: getSize(125.00),
                                                alignment: Alignment.center),
                                            Align(alignment: Alignment.topRight,
                                                child: Container(
                                                    height: getSize(24.00),
                                                    width: getSize(24.00),
                                                    margin: getMargin(
                                                        top: 10, right: 10),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        borderRadius: BorderRadius
                                                            .circular(
                                                            getHorizontalSize(
                                                                12.00)),
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .gray300,
                                                            width: getHorizontalSize(
                                                                1.00)))))
                                          ])), Container(height: getSize(
                                      125.00),
                                      width: getSize(125.00),
                                      child: Stack(alignment: Alignment
                                          .topRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImageplaceholder14,
                                                height: getSize(125.00),
                                                width: getSize(125.00),
                                                alignment: Alignment.center),
                                            Align(alignment: Alignment.topRight,
                                                child: Container(
                                                    height: getSize(24.00),
                                                    width: getSize(24.00),
                                                    margin: getMargin(
                                                        top: 10, right: 10),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        borderRadius: BorderRadius
                                                            .circular(
                                                            getHorizontalSize(
                                                                12.00)),
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .gray300,
                                                            width: getHorizontalSize(
                                                                1.00)))))
                                          ])), Container(height: getSize(
                                      125.00),
                                      width: getSize(125.00),
                                      child: Stack(alignment: Alignment
                                          .topRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImageplaceholder15,
                                                height: getSize(125.00),
                                                width: getSize(125.00),
                                                alignment: Alignment.center),
                                            Align(alignment: Alignment.topRight,
                                                child: Container(
                                                    height: getSize(24.00),
                                                    width: getSize(24.00),
                                                    margin: getMargin(
                                                        top: 10, right: 10),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        borderRadius: BorderRadius
                                                            .circular(
                                                            getHorizontalSize(
                                                                12.00)),
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .gray300,
                                                            width: getHorizontalSize(
                                                                1.00)))))
                                          ]))
                                  ])),
                          Container(width: size.width,
                              margin: getMargin(top: 13),
                              padding: getPadding(
                                  left: 20, top: 5, right: 20, bottom: 5),
                              decoration: AppDecoration.fillIndigo900,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(imagePath: ImageConstant
                                        .imgRectangle432435x35,
                                        height: getSize(35.00),
                                        width: getSize(35.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(10.00)),
                                        margin: getMargin(top: 6, bottom: 7)),
                                    CustomImageView(imagePath: ImageConstant
                                        .imgRectangle4326,
                                        height: getSize(35.00),
                                        width: getSize(35.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(10.00)),
                                        margin: getMargin(left: 8,
                                            top: 6,
                                            bottom: 7)),
                                    Spacer(),
                                    CustomButton(height: 48,
                                        width: 120,
                                        text: "Next",
                                        variant: ButtonVariant.FillWhiteA700,
                                        fontStyle: ButtonFontStyle
                                            .RobotoBold16Gray90001)
                                  ]))
                        ])))),
        ));
  }

  onTapArrowleft39(BuildContext context) {
    Navigator.pop(context);
  }
}

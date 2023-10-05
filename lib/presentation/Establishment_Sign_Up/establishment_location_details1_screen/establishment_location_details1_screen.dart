import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_radio_button.dart';
import '../../../widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class EstablishmentLocationDetails1Screen extends StatelessWidget {
  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 12, bottom: 12),
                    onTap: () => onTapArrowleft18(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: " Establishment Details"),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(899.00),
                        width: size.width,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: size.width,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(314.00),
                                            child: Text(
                                                "Create Your Establishment Page",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style:
                                                    AppStyle.txtInterBold24)),
                                        Container(
                                            height: getVerticalSize(43.00),
                                            width: size.width,
                                            margin: getMargin(top: 34),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width: size.width,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            24),
                                                                    child: Text(
                                                                        " Establishment  Details",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular16Gray900)),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: size
                                                                        .width,
                                                                    margin: getMargin(
                                                                        top:
                                                                            21),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray300))
                                                              ]))),
                                                  CustomIconButton(
                                                      height: 24,
                                                      width: 24,
                                                      margin:
                                                          getMargin(right: 20),
                                                      shape: IconButtonShape
                                                          .CircleBorder12,
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCheckmarkWhiteA700))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: CustomRadioButton(
                                                text: " Establishment Location",
                                                iconSize: 24,
                                                value:
                                                    "msg_establishment_location2"
                                                    "",
                                                groupValue: radioGroup,
                                                margin: getMargin(top: 16),
                                                shape:
                                                    RadioShape.CircleBorder12,
                                                fontStyle: RadioFontStyle
                                                    .RobotoRegular16,
                                                onChange: (value) {
                                                  radioGroup = value;
                                                })),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300)),
                                        Padding(
                                            padding: getPadding(
                                                left: 23, top: 21, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(" Establishment Timing",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoBold16Gray90001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdown,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 7))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(
                                                left: 20, top: 20, right: 20),
                                            padding: getPadding(
                                                left: 12,
                                                top: 13,
                                                right: 12,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 1,
                                                          right: 1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Monday",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium16Red300),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdown,
                                                                height:
                                                                    getVerticalSize(
                                                                        6.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 5,
                                                                        bottom:
                                                                            7))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 4, top: 14),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTxtTime(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                    "8:00 AM to 10:30 PM",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16Gray900)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            19),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  5,
                                                                              bottom:
                                                                                  7),
                                                                          child: Text(
                                                                              "Edit Time",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16)),
                                                                      Spacer(),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  7,
                                                                              bottom:
                                                                                  5),
                                                                          child: Text(
                                                                              "Open",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16Gray90001)),
                                                                      CustomSwitch(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  9),
                                                                          value:
                                                                              true,
                                                                          onChanged:
                                                                              (value) {})
                                                                    ]))
                                                          ]))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 20, top: 20, right: 20),
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 16,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("Tuesday",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray30012x6,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 20, top: 10, right: 20),
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 16,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("Wednesday",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray30012x6,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 18, top: 10, right: 21),
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 16,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("Thursday",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray30012x6,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 18, top: 10, right: 21),
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 16,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("Friday",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray30012x6,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 18, top: 10, right: 21),
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 16,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("Saturday",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900)),
                                                  Container(
                                                      height: getSize(6.00),
                                                      width: getSize(6.00),
                                                      margin: getMargin(
                                                          left: 15,
                                                          top: 7,
                                                          bottom: 7),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .redA200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      3.00)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 5, bottom: 1),
                                                      child: Text("Closed",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16RedA200)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray30012x6,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 18, top: 10, right: 21),
                                            padding: getPadding(all: 16),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Sunday",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray900),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray30012x6,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      margin: getMargin(
                                                          top: 2, bottom: 2))
                                                ])),
                                        CustomButton(
                                            height: 48,
                                            width: 335,
                                            text: "Save & Next",
                                            margin: getMargin(top: 20),
                                            padding: ButtonPadding.PaddingAll16,
                                            onTap: () =>
                                                onTapSavenext(context)),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 30),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300)),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      " Establishment Menu Setup",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Black900),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright12x6,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ]))
                                      ]))),
                        ]))))));
  }

  onTapTxtTime(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.timeAddScreen);
  }

  onTapSavenext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuDetailsScreen);
  }

  onTapArrowleft18(BuildContext context) {
    Navigator.pop(context);
  }
}

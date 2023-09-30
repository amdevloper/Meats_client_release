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

// ignore_for_file: must_be_immutable
class MenuDetails1Screen extends StatelessWidget {
  String radioGroup = "";

  String radioGroup1 = "";

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
                    onTap: () => onTapArrowleft24(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: " Establishment  Details"),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(318.00),
                                  child: Text(
                                      "Create your Establishment page",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterBold24)),
                              Container(
                                  height: getVerticalSize(43.00),
                                  width: size.width,
                                  margin: getMargin(top: 34),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: size.width,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24),
                                                          child: Text(
                                                              " Establishment Details",
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
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 20),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300))
                                                    ]))),
                                        CustomIconButton(
                                            height: 24,
                                            width: 24,
                                            margin: getMargin(right: 20),
                                            shape:
                                                IconButtonShape.CircleBorder12,
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmarkWhiteA700))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: CustomRadioButton(
                                      text: " Establishment Location",
                                      iconSize: 24,
                                      value: "msg_establishment_location2" "",
                                      groupValue: radioGroup,
                                      margin: getMargin(top: 15),
                                      shape: RadioShape.CircleBorder12,
                                      fontStyle: RadioFontStyle.RobotoRegular16,
                                      onChange: (value) {
                                        radioGroup = value;
                                      })),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 19),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: CustomRadioButton(
                                      text: " Establishment Timing",
                                      iconSize: 24,
                                      value: "msg_establishment_timing2" "",
                                      groupValue: radioGroup1,
                                      margin: getMargin(top: 15),
                                      shape: RadioShape.CircleBorder12,
                                      fontStyle: RadioFontStyle.RobotoRegular16,
                                      onChange: (value) {
                                        radioGroup1 = value;
                                      })),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 18),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 21, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(" Establishment Menu Setup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular16Black900),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownBlueGray300,
                                            height: getVerticalSize(6.00),
                                            width: getHorizontalSize(12.00),
                                            margin:
                                                getMargin(top: 5, bottom: 7))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 18, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomButton(
                                                height: 32,
                                                width: 95,
                                                text: "Breakfast",
                                                variant: ButtonVariant
                                                    .OutlineGray300_1,
                                                shape: ButtonShape
                                                    .CustomBorderLR20,
                                                padding:
                                                    ButtonPadding.PaddingT8,
                                                fontStyle: ButtonFontStyle
                                                    .RobotoRegular12,
                                                suffixWidget: Container(
                                                    margin: getMargin(left: 10),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorBlueGray300))),
                                            CustomButton(
                                                height: 32,
                                                width: 102,
                                                text: "+ Add Item",
                                                variant:
                                                    ButtonVariant.FillGray90001,
                                                shape:
                                                    ButtonShape.CircleBorder16,
                                                padding:
                                                    ButtonPadding.PaddingAll5,
                                                fontStyle: ButtonFontStyle
                                                    .RobotoMedium16,
                                                onTap: () =>
                                                    onTapAdditem(context))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 40),
                                      child: Text("Exotic Veg (01)",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray60001))),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder,
                                            height: getSize(50.00),
                                            width: getSize(50.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            margin: getMargin(bottom: 52)),
                                        Padding(
                                            padding: getPadding(left: 10),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 3),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          15.00),
                                                                      padding: getPadding(
                                                                          all:
                                                                              4),
                                                                      decoration: AppDecoration
                                                                          .outlineTeal3001
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder2),
                                                                      child: Column(
                                                                          mainAxisSize: MainAxisSize
                                                                              .min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                                height: getSize(7.00),
                                                                                width: getSize(7.00),
                                                                                decoration: BoxDecoration(color: ColorConstant.teal300, borderRadius: BorderRadius.circular(getHorizontalSize(3.00))))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              6),
                                                                      child: Text(
                                                                          "Cheesy-7 Pizza",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRobotoMedium14))
                                                                ])),
                                                        CustomButton(
                                                            height: 32,
                                                            width: 83,
                                                            text: "Edit",
                                                            margin: getMargin(
                                                                left: 95,
                                                                bottom: 9),
                                                            variant: ButtonVariant
                                                                .OutlineGray300_1,
                                                            shape: ButtonShape
                                                                .CircleBorder16,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingAll5,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoMedium16Gray900)
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        169.00),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "An Exotic Combination of White Mozzarella, Cream, ",
                                                                              style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "Read More",
                                                                              style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                            CustomSwitch(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            49,
                                                                        bottom:
                                                                            1),
                                                                value: true,
                                                                onChanged:
                                                                    (value) {})
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "\$5.66",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium14Gray90001)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 5,
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "\$8.66",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium12
                                                                        .copyWith(
                                                                            decoration:
                                                                                TextDecoration.lineThrough))),
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 144),
                                                                child: Text(
                                                                    "In Stock",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16Gray90001))
                                                          ]))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(275.00),
                                      margin: getMargin(top: 16, right: 20),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray300,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(1.00))))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 17),
                                      child: Text("Classic Veg (02)",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray60001))),
                              Container(
                                  height: getVerticalSize(100.00),
                                  width: size.width,
                                  margin: getMargin(top: 17),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder,
                                            height: getSize(50.00),
                                            width: getSize(50.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.topLeft,
                                            margin:
                                                getMargin(left: 20, top: 1)),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 80,
                                                    right: 20,
                                                    bottom: 58),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        15.00),
                                                                    padding:
                                                                        getPadding(
                                                                            all:
                                                                                4),
                                                                    decoration: AppDecoration
                                                                        .outlineTeal3001
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder2),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              height: getSize(7.00),
                                                                              width: getSize(7.00),
                                                                              decoration: BoxDecoration(color: ColorConstant.teal300, borderRadius: BorderRadius.circular(getHorizontalSize(3.00))))
                                                                        ])),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                7),
                                                                    child: Text(
                                                                        "Cheesy-7 Pizza",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoMedium14))
                                                              ])),
                                                      CustomButton(
                                                          height: 32,
                                                          width: 83,
                                                          text: "Edit",
                                                          margin: getMargin(
                                                              bottom: 10),
                                                          variant: ButtonVariant
                                                              .OutlineGray300_1,
                                                          shape: ButtonShape
                                                              .CircleBorder16,
                                                          padding: ButtonPadding
                                                              .PaddingAll5,
                                                          fontStyle: ButtonFontStyle
                                                              .RobotoMedium16Gray900)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(56.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 80),
                                                              child: Text(
                                                                  "\$5.66",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoMedium14Gray90001))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 122,
                                                                      bottom:
                                                                          1),
                                                              child: Text(
                                                                  "\$8.66",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoMedium12
                                                                      .copyWith(
                                                                          decoration:
                                                                              TextDecoration.lineThrough)))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      169.00),
                                                              margin: getMargin(
                                                                  left: 80,
                                                                  top: 1),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "An Exotic Combination of White Mozzarella, Cream, ",
                                                                            style: TextStyle(
                                                                                color: ColorConstant.blueGray300,
                                                                                fontSize: getFontSize(12),
                                                                                fontFamily: 'Roboto',
                                                                                fontWeight: FontWeight.w400)),
                                                                        TextSpan(
                                                                            text:
                                                                                "Read More",
                                                                            style: TextStyle(
                                                                                color: ColorConstant.gray900,
                                                                                fontSize: getFontSize(12),
                                                                                fontFamily: 'Roboto',
                                                                                fontWeight: FontWeight.w400))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      58.00),
                                                              margin: getMargin(
                                                                  right: 20),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomSwitch(
                                                                        value:
                                                                            true,
                                                                        onChanged:
                                                                            (value) {}),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                5),
                                                                        child: Text(
                                                                            "In Stock",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular16Gray90001))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  bottom: 6),
                                                              padding:
                                                                  getPadding(
                                                                      left: 163,
                                                                      top: 8,
                                                                      right:
                                                                          163,
                                                                      bottom:
                                                                          8),
                                                              decoration: AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderTL16),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgRectangle,
                                                                        height: getVerticalSize(
                                                                            5.00),
                                                                        width: getHorizontalSize(
                                                                            48.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            2.00)),
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                3))
                                                                  ])))
                                                    ])))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(275.00),
                                      margin: getMargin(top: 19, right: 20),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray300,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(1.00))))),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder,
                                            height: getSize(50.00),
                                            width: getSize(50.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            margin:
                                                getMargin(top: 1, bottom: 52)),
                                        Padding(
                                            padding: getPadding(left: 10),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 3),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          15.00),
                                                                      padding: getPadding(
                                                                          all:
                                                                              4),
                                                                      decoration: AppDecoration
                                                                          .outlineTeal3001
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder2),
                                                                      child: Column(
                                                                          mainAxisSize: MainAxisSize
                                                                              .min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                                height: getSize(7.00),
                                                                                width: getSize(7.00),
                                                                                decoration: BoxDecoration(color: ColorConstant.teal300, borderRadius: BorderRadius.circular(getHorizontalSize(3.00))))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              6),
                                                                      child: Text(
                                                                          "Cheesy-7 Pizza",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRobotoMedium14))
                                                                ])),
                                                        CustomButton(
                                                            height: 32,
                                                            width: 83,
                                                            text: "Edit",
                                                            margin: getMargin(
                                                                left: 91,
                                                                bottom: 8),
                                                            variant: ButtonVariant
                                                                .OutlineGray300_1,
                                                            shape: ButtonShape
                                                                .CircleBorder16,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingAll9,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoMedium16Gray900)
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        172.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 1),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "An Exotic Combination of White Mozzarella, Cream, ",
                                                                              style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "Read More",
                                                                              style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                            CustomSwitch(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            47,
                                                                        bottom:
                                                                            1),
                                                                value: false,
                                                                onChanged:
                                                                    (value) {})
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text("\$5.66",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium14Gray90001),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            5),
                                                                child: Text(
                                                                    "\$8.66",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium12
                                                                        .copyWith(
                                                                            decoration:
                                                                                TextDecoration.lineThrough))),
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 108),
                                                                child: Text(
                                                                    "out of Stock",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16Gray90001))
                                                          ]))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(275.00),
                                      margin: getMargin(top: 16, right: 20),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray300,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(1.00))))),
                              CustomButton(
                                  height: 48,
                                  width: 335,
                                  text: "Save & Next",
                                  margin: getMargin(top: 28),
                                  padding: ButtonPadding.PaddingAll16)
                            ]))))));
  }

  onTapAdditem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addItemScreen);
  }

  onTapArrowleft24(BuildContext context) {
    Navigator.pop(context);
  }
}

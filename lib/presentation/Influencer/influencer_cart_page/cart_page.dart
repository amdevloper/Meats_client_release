import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_6.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_radio_button.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CartPage extends StatelessWidget {
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
                height: getVerticalSize(46.00),
                centerTitle: true,
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 20, top: 9, right: 21),
                              child: Row(children: [
                                AppbarSubtitle6(
                                    text: "Cart", margin: getMargin(bottom: 1)),
                                AppbarImage(
                                    height: getVerticalSize(20.00),
                                    width: getHorizontalSize(18.00),
                                    svgPath: ImageConstant.imgNotification,
                                    margin: getMargin(left: 285),
                                    onTap: () => onTapNotification(context))
                              ])),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 16),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300))
                        ])),
                styleType: Style.bgFillWhiteA700_1),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(702.00),
                        width: size.width,
                        margin: getMargin(top: 20),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: size.width,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 20),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImageplaceholder,
                                                          height:
                                                              getSize(60.00),
                                                          width: getSize(60.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      10.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 7,
                                                              bottom: 10),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "La Pino’s Pizza",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium16Gray900),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                8),
                                                                    child: Text(
                                                                        "Lakewood, CA, USA",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular12Bluegray300))
                                                              ]))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 11, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 11, bottom: 3),
                                                      child: CustomRadioButton(
                                                          text:
                                                              "Cheesy-7 Pizza",
                                                          iconSize: 15,
                                                          value:
                                                              "lbl_cheesy_7_pizza"
                                                              "",
                                                          groupValue:
                                                              radioGroup,
                                                          margin: getMargin(
                                                              top: 11,
                                                              bottom: 3),
                                                          onChange: (value) {
                                                            radioGroup = value;
                                                          })),
                                                  Container(
                                                      padding:
                                                          getPadding(all: 5),
                                                      decoration: AppDecoration
                                                          .outlineGray3002
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder12),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMenu,
                                                                height: getSize(
                                                                    19.00),
                                                                width: getSize(
                                                                    19.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            9.00)),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            1)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12,
                                                                        bottom:
                                                                            1),
                                                                child: Text("1",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium16Gray900)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPlus,
                                                                height: getSize(
                                                                    19.00),
                                                                width: getSize(
                                                                    19.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            9.00)),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            14,
                                                                        top: 1))
                                                          ]))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 41, right: 21),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  183.00),
                                                          child: Text(
                                                              "Regular , Olives, Pineapples,\nRed Paprika, Cheesy-7 , Hot  Garlic",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular12Bluegray300)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 15,
                                                              bottom: 1),
                                                          child: Text("\$6.00",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium14))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 41, top: 4),
                                                child: Text("Customize",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular8))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 9),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 10, bottom: 4),
                                                      child: CustomRadioButton(
                                                          text:
                                                              "Paneer Tikka Butter Masala",
                                                          iconSize: 15,
                                                          value:
                                                              "msg_paneer_tikka_butter"
                                                              "",
                                                          groupValue:
                                                              radioGroup1,
                                                          margin: getMargin(
                                                              top: 10,
                                                              bottom: 4),
                                                          onChange: (value) {
                                                            radioGroup1 = value;
                                                          })),
                                                  Container(
                                                      padding:
                                                          getPadding(all: 5),
                                                      decoration: AppDecoration
                                                          .outlineGray3002
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder12),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMenu,
                                                                height: getSize(
                                                                    19.00),
                                                                width: getSize(
                                                                    19.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            9.00)),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            1)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12,
                                                                        bottom:
                                                                            1),
                                                                child: Text("1",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium16Gray900)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPlus,
                                                                height: getSize(
                                                                    19.00),
                                                                width: getSize(
                                                                    19.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            9.00)),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            14,
                                                                        top: 1))
                                                          ]))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 41, right: 21),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  183.00),
                                                          child: Text(
                                                              "Regular , Olives, Pineapples,\nRed Paprika, Cheesy-7 , Hot  Garlic",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular12Bluegray300)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 15,
                                                              bottom: 1),
                                                          child: Text("\$6.00",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium14))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 41, top: 4),
                                                child: Text("Customize",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular8))),
                                        Container(
                                            height: getVerticalSize(5.00),
                                            width: size.width,
                                            margin: getMargin(top: 22),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            2.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgOffer,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12,
                                                          top: 3,
                                                          bottom: 1),
                                                      child: Text(
                                                          "Apply Coupon",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium16Gray900)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      margin: getMargin(
                                                          top: 6, bottom: 6),
                                                      onTap: () {
                                                        onTapImgArrowright(
                                                            context);
                                                      })
                                                ])),
                                        Container(
                                            height: getVerticalSize(5.00),
                                            width: size.width,
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            2.00)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20, top: 17),
                                                child: Text("Bill Details",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium16Gray900))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 19, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          119.00),
                                                      margin: getMargin(top: 1),
                                                      child: Text(
                                                          "Item Total\nDelivery Fees\nTaxes and Charges",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium14Bluegray300)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          44.00),
                                                      margin:
                                                          getMargin(bottom: 1),
                                                      child: Text(
                                                          "\$12.00\n\$2.00\n\$2.00",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: AppStyle
                                                              .txtRobotoMedium14Gray900))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 15),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 21, top: 16, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("To Pay",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoBold14)),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("\$16.00",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoBold14))
                                                ])),
                                        Container(
                                            height: getVerticalSize(5.00),
                                            width: size.width,
                                            margin: getMargin(top: 24),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            2.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 19, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Delivery Address",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium16Gray900),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtChange(context);
                                                      },
                                                      child: Text("Change",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium16Gray90001))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20, top: 14),
                                                child: Text("Work",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium14Bluegray300))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(253.00),
                                                margin:
                                                    getMargin(left: 20, top: 7),
                                                child: Text(
                                                    "18th Street Brewery, Oakley Avenue, \nHammond, IN",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16)))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  width: size.width,
                                  margin: getMargin(top: 553, bottom: 80),
                                  padding: getPadding(
                                      left: 20, top: 10, right: 20, bottom: 10),
                                  decoration: AppDecoration.fillIndigo900,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 7, top: 9, bottom: 6),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("To Pay",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular10),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text("\$ 16.00",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium16WhiteA700))
                                                ])),
                                        CustomButton(
                                            height: 48,
                                            width: 175,
                                            text: "Proceed to Pay",
                                            margin: getMargin(top: 1),
                                            variant:
                                                ButtonVariant.FillWhiteA700,
                                            shape: ButtonShape.CircleBorder24,
                                            padding: ButtonPadding.PaddingAll13,
                                            fontStyle: ButtonFontStyle
                                                .RobotoBold16Gray90001)
                                      ])))
                        ]))))));
  }

  onTapImgArrowright(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.couponCodeScreen);
  }

  onTapTxtChange(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.selectDeliveryAddressScreen);
  }

  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}

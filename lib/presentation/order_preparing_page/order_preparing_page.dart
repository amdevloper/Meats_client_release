import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class OrderPreparingPage extends StatelessWidget {
  String radioGroup = "";

  String radioGroup1 = "";

  TextEditingController group104Controller = TextEditingController();

  String radioGroup2 = "";

  String radioGroup3 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          width: getHorizontalSize(335.00),
                          padding: getPadding(top: 17, bottom: 17),
                          decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 20, right: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtLanguage(context);
                                              },
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 3),
                                                  child: Text(
                                                      "Order ID: 154780 ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium14))),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("6:26 PM",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Bluegray500))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 19, top: 12),
                                        child: Text("2 Orders by Alex Martin",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRegular10))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(335.00),
                                    margin: getMargin(top: 12),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 12, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomRadioButton(
                                              text: "1 x Cheesy-7 Pizza",
                                              iconSize: 15,
                                              value:
                                                  "msg_1_x_cheesy_7_pizza" "",
                                              groupValue: radioGroup,
                                              onChange: (value) {
                                                radioGroup = value;
                                              }),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("\$6.0",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Gray90001))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 12, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomRadioButton(
                                              text:
                                                  "1 x Paneer Tikka Butter Masala",
                                              iconSize: 15,
                                              value: "msg_1_x_paneer_tikka" "",
                                              groupValue: radioGroup1,
                                              onChange: (value) {
                                                radioGroup1 = value;
                                              }),
                                          Text("\$6.0",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoMedium14Gray90001)
                                        ])),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(335.00),
                                    margin: getMargin(top: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 20, top: 9),
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 2),
                                              child: Text(
                                                  "Total Bill:  \$16.00",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular12)),
                                          Container(
                                              width: getHorizontalSize(40.00),
                                              margin: getMargin(left: 8),
                                              padding: getPadding(
                                                  left: 8,
                                                  top: 2,
                                                  right: 8,
                                                  bottom: 2),
                                              decoration: AppDecoration
                                                  .txtOutlineGray300
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder12),
                                              child: Text("Paid",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular12Black900))
                                        ]))),
                                CustomTextFormField(
                                    width: 295,
                                    focusNode: FocusNode(),
                                    controller: group104Controller,
                                    hintText:
                                        "Your order is prepared and is ready for pick up.",
                                    margin: getMargin(top: 18),
                                    padding: TextFormFieldPadding.PaddingT12,
                                    fontStyle:
                                        TextFormFieldFontStyle.RobotoRegular12,
                                    textInputAction: TextInputAction.done),
                                CustomButton(
                                    height: 48,
                                    width: 295,
                                    text: "Order Ready (35:00 min)",
                                    margin: getMargin(top: 20),
                                    padding: ButtonPadding.PaddingAll16)
                              ])),
                      Container(
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 20),
                          padding: getPadding(top: 17, bottom: 17),
                          decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(left: 20, right: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtLanguageOne(context);
                                              },
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 3),
                                                  child: Text(
                                                      "Order ID: 154780 ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium14))),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("6:26 PM",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Bluegray500))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 19, top: 12),
                                        child: Text("2 Orders by Alex Martin",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRegular10))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(335.00),
                                    margin: getMargin(top: 12),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 12, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomRadioButton(
                                              text: "1 x Cheesy-7 Pizza",
                                              iconSize: 15,
                                              value:
                                                  "msg_1_x_cheesy_7_pizza" "",
                                              groupValue: radioGroup2,
                                              onChange: (value) {
                                                radioGroup2 = value;
                                              }),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("\$6.0",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Gray90001))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 12, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomRadioButton(
                                              text:
                                                  "1 x Paneer Tikka Butter Masala",
                                              iconSize: 15,
                                              value: "msg_1_x_paneer_tikka" "",
                                              groupValue: radioGroup3,
                                              onChange: (value) {
                                                radioGroup3 = value;
                                              }),
                                          Text("\$6.0",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoMedium14Gray90001)
                                        ])),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(335.00),
                                    margin: getMargin(top: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 20, top: 9),
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 2),
                                              child: Text(
                                                  "Total Bill:  \$16.00",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular12)),
                                          Container(
                                              width: getHorizontalSize(40.00),
                                              margin: getMargin(left: 8),
                                              padding: getPadding(
                                                  left: 8,
                                                  top: 2,
                                                  right: 8,
                                                  bottom: 2),
                                              decoration: AppDecoration
                                                  .txtOutlineGray300
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder12),
                                              child: Text("Paid",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular12Black900))
                                        ]))),
                                Container(
                                    margin:
                                        getMargin(left: 20, top: 19, right: 19),
                                    padding: getPadding(all: 10),
                                    decoration: AppDecoration.outlineGray300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle4334,
                                              height: getSize(25.00),
                                              width: getSize(25.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(12.00)),
                                              margin: getMargin(bottom: 8)),
                                          Padding(
                                              padding: getPadding(left: 8),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "Alex Martin has arrived",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular12Gray900),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: Text("OTP: XXXX",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular10))
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCallTeal300,
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin:
                                                  getMargin(top: 4, bottom: 4)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgContrast,
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin: getMargin(
                                                  left: 9, top: 4, bottom: 4))
                                        ])),
                                Container(
                                    width: getHorizontalSize(295.00),
                                    margin: getMargin(
                                        left: 20,
                                        top: 15,
                                        right: 20,
                                        bottom: 3),
                                    padding: getPadding(
                                        left: 58,
                                        top: 13,
                                        right: 58,
                                        bottom: 13),
                                    decoration: AppDecoration.outlineGray9004f
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: Text(
                                                  "Order Ready (35:00 min)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtRobotoBold16WhiteA700))
                                        ]))
                              ]))
                    ])))));
  }

  onTapTxtLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.prepareOrderFullDetailsScreen);
  }

  onTapTxtLanguageOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.prepareOrderFullDetailsScreen);
  }
}

import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class OrderRejectedDetailsScreen extends StatelessWidget {
  String radioGroup = "";

  String radioGroup1 = "";

  TextEditingController groupEightyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft64(context)),
                title: AppbarSubtitle(
                    text: "Completed Order", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 5, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 18, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Order ID: 154780 ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium14),
                                Text("6:26 PM",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtRobotoMedium14Bluegray500)
                              ])),
                      Padding(
                          padding: getPadding(left: 26, top: 8, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("2 Orders by establishment owner",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular10),
                                Text("Rejected",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium10RedA200)
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(334.00),
                          margin: getMargin(top: 12),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 12, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomRadioButton(
                                    text: "1 x Cheesy-7 Pizza",
                                    iconSize: 14,
                                    value: "msg_1_x_cheesy_7_pizza" "",
                                    groupValue: radioGroup,
                                    onChange: (value) {
                                      radioGroup = value;
                                    }),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("\$6.0",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoMedium14Gray90001))
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 12, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomRadioButton(
                                    text: "1 x Paneer Tikka Butter Masala",
                                    iconSize: 14,
                                    value: "msg_1_x_paneer_tikka" "",
                                    groupValue: radioGroup1,
                                    onChange: (value) {
                                      radioGroup1 = value;
                                    }),
                                Text("\$6.0",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium14Gray90001)
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 15, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Item Total",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtRobotoMedium14Bluegray300),
                                Text("\$12.00",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium14)
                              ])),
                      Container(
                          height: getVerticalSize(5.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(top: 26),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(2.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 19, top: 17),
                              child: Text("Order Details",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium16Gray900))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 19, top: 27),
                              child: Text("Payment Method",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium12))),
                      Padding(
                          padding: getPadding(left: 19, top: 6, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Paid: Using PayPal",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular16Gray900)),
                                Container(
                                    width: getHorizontalSize(39.00),
                                    padding: getPadding(
                                        left: 7, top: 2, right: 7, bottom: 2),
                                    decoration: AppDecoration.txtOutlineGray300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder12),
                                    child: Text("Paid",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular12Black900))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 19, top: 26),
                              child: Text("Deliver to",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium12))),
                      Padding(
                          padding: getPadding(left: 19, top: 3, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("Establishment owner | +1 123 456 7895",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular16Gray900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCallTeal300,
                                    height: getSize(24.00),
                                    width: getSize(24.00)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgContrast,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(left: 9))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 19, top: 29),
                              child: Text("Delivery Address",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium12))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 19, top: 7),
                              child: Text("Lakewood, CA, USA",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular16Gray900))),
                      CustomTextFormField(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: groupEightyController,
                          hintText:
                              "Item is out of stock, that’s why order rejected.",
                          margin: getMargin(top: 20, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT12,
                          fontStyle: TextFormFieldFontStyle.RobotoRegular12,
                          textInputAction: TextInputAction.done)
                    ])),
        ));
  }

  onTapArrowleft64(BuildContext context) {
    Navigator.pop(context);
  }
}

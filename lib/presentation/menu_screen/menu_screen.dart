import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MenuScreen extends StatelessWidget {
  TextEditingController controlsTextController = TextEditingController();

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
                    onTap: () => onTapArrowleft20(context)),
                title: AppbarSubtitle2(
                    text: "My Foodie Partner", margin: getMargin(left: 14)),
                actions: [
                  Container(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(1.00),
                      margin:
                          getMargin(left: 21, top: 11, right: 21, bottom: 9),
                      decoration: BoxDecoration(
                          color: ColorConstant.gray900,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(10.00)),
                          border: Border.all(
                              color: ColorConstant.black900,
                              width: getHorizontalSize(1.00),
                              strokeAlign: BorderSide.strokeAlignCenter)))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 2, bottom: 2),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(222.00),
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 4),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: getHorizontalSize(142.00),
                                        margin: getMargin(right: 11),
                                        padding: getPadding(
                                            left: 16,
                                            top: 11,
                                            right: 16,
                                            bottom: 11),
                                        decoration: AppDecoration
                                            .outlineBlack90033
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 17),
                                                  child: Text("Delete Chat",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray900)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 21),
                                                  child: Text("Audio Call",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray900)),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtVideoCall(context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 4, top: 21),
                                                      child: Text("Video Call",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtDeleteGroup(
                                                        context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 4, top: 22),
                                                      child: Text(
                                                          "Delete Group",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtRenameGroup(
                                                        context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 4, top: 21),
                                                      child: Text(
                                                          "Rename Group",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900)))
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 29),
                              child: Text("09:41 AM",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular14Gray500))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 14, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomButton(
                                        height: 40,
                                        width: 69,
                                        text: "Hello",
                                        variant: ButtonVariant.FillBluegray300,
                                        shape: ButtonShape.CircleBorder20,
                                        padding: ButtonPadding.PaddingAll9,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRegular16),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse724x24,
                                        height: getSize(24.00),
                                        width: getSize(24.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(12.00)),
                                        margin: getMargin(
                                            left: 8, top: 8, bottom: 8))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(155.00),
                              margin: getMargin(top: 16, right: 56),
                              padding: getPadding(
                                  left: 16, top: 9, right: 16, bottom: 9),
                              decoration: AppDecoration.fillBluegray300
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Try Pizza Today ?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular16WhiteA700))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 24, top: 16),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse8,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(12.00)),
                                margin: getMargin(top: 10, bottom: 10)),
                            CustomButton(
                                height: 44,
                                width: 93,
                                text: "Ya , Sure",
                                margin: getMargin(left: 8),
                                variant: ButtonVariant.FillGray100,
                                shape: ButtonShape.CircleBorder20,
                                fontStyle:
                                    ButtonFontStyle.RobotoRegular16Black900)
                          ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 16, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 16,
                                            top: 9,
                                            right: 16,
                                            bottom: 9),
                                        decoration: AppDecoration
                                            .fillBluegray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("Which Pizza ?",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16WhiteA700))
                                            ])),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse724x24,
                                        height: getSize(24.00),
                                        width: getSize(24.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(12.00)),
                                        margin: getMargin(
                                            left: 8, top: 8, bottom: 8))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 24, top: 16),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse713,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(12.00)),
                                margin: getMargin(top: 10, bottom: 10)),
                            CustomButton(
                                height: 44,
                                width: 93,
                                text: "Ya , Sure",
                                margin: getMargin(left: 8),
                                variant: ButtonVariant.FillGray100,
                                shape: ButtonShape.CircleBorder20,
                                fontStyle:
                                    ButtonFontStyle.RobotoRegular16Black900)
                          ])),
                      Padding(
                          padding: getPadding(left: 24, top: 16),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse713,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(12.00))),
                            Padding(
                                padding: getPadding(left: 8, top: 3, bottom: 1),
                                child: Text("Typing...",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16Gray500))
                          ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray100)),
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controlsTextController,
                          hintText: "Type your message",
                          margin: getMargin(top: 16, bottom: 5),
                          shape: TextFormFieldShape.CircleBorder24,
                          padding: TextFormFieldPadding.PaddingT13,
                          fontStyle: TextFormFieldFontStyle.RobotoRegular16,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          suffix: Container(
                              margin: getMargin(
                                  left: 12, top: 16, right: 29, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLocation)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48.00)))
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

  onTapTxtVideoCall(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.groupVideoCallScreen);
  }

  onTapTxtDeleteGroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.group34128Screen);
  }

  onTapTxtRenameGroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.group34127Screen);
  }

  onTapArrowleft20(BuildContext context) {
    Navigator.pop(context);
  }
}

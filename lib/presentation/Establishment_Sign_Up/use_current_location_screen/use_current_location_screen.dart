import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UseCurrentLocationScreen extends StatelessWidget {
  TextEditingController controlsTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: Container(
                              height: size.height,
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: getVerticalSize(516.00),
                                            width: size.width,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgMap,
                                                      height: getVerticalSize(
                                                          516.00),
                                                      width: getHorizontalSize(
                                                          375.00),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          width: size.width,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomAppBar(
                                                                    height:
                                                                        getVerticalSize(
                                                                            48.00),
                                                                    leadingWidth:
                                                                        375,
                                                                    leading: AppbarImage(
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00),
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowleft,
                                                                        margin: getMargin(
                                                                            left:
                                                                                18,
                                                                            top:
                                                                                12,
                                                                            right:
                                                                                333,
                                                                            bottom:
                                                                                12),
                                                                        onTap: () =>
                                                                            onTapArrowleft17(
                                                                                context)),
                                                                    styleType: Style
                                                                        .bgFillWhiteA700),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLocationGray9000132x32,
                                                                    height:
                                                                        getSize(
                                                                            32.00),
                                                                    width: getSize(
                                                                        32.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            96))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: getVerticalSize(
                                                          24.00),
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius: BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          16.00)),
                                                              topRight: Radius.circular(
                                                                  getHorizontalSize(
                                                                      16.00))))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "Confirm Location",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium22)),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 18),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 28,
                                                          right: 20),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding: getPadding(
                                                                    bottom: 1),
                                                                child: Text(
                                                                    "Location",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium16Bluegray300)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Change",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium16Gray90001))
                                                          ])),
                                                  CustomTextFormField(
                                                      width: 335,
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          controlsTextController,
                                                      hintText:
                                                          "Lakewood, CA, USA",
                                                      margin: getMargin(top: 9),
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .RobotoMedium16Gray900,
                                                      textInputAction:
                                                          TextInputAction.done),
                                                  CustomButton(
                                                      height: 48,
                                                      width: 335,
                                                      text: "Confirm",
                                                      margin:
                                                          getMargin(top: 30),
                                                      onTap: () => onTapConfirm(
                                                          context)),
                                                ])))
                                  ]))))
                ]))));
  }

  onTapArrowleft17(BuildContext context) {
    Navigator.pop(context);
  }

  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.establishmentLocationDetailsScreen);
  }
}
